import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../db/mixin_database.dart';
import '../../../service/account_provider.dart';
import '../../../service/profile/profile_manager.dart';
import '../../../util/extension/extension.dart';
import '../../router/mixin_routes.dart';
import '../../widget/asset_selection_list_widget.dart';
import '../../widget/buttons.dart';
import '../../widget/chart_assets.dart';

class Header extends HookWidget {
  const Header({
    required this.data,
    super.key,
    this.bitcoin,
  });

  final List<AssetResult> data;
  final AssetResult? bitcoin;

  @override
  Widget build(BuildContext context) {
    final balance = useMemoized(
        () => data.fold<Decimal>(
            0.0.asDecimal,
            (previousValue, AssetResult element) =>
                previousValue + element.amountOfCurrentCurrency),
        [data]);

    final balanceOfBtc = useMemoized(() {
      if (bitcoin == null) {
        return data
            .fold<Decimal>(0.0.asDecimal,
                (previousValue, element) => previousValue + element.amountOfBtc)
            .toString();
      } else {
        return ((balance / bitcoin!.fiatRate.asDecimal) /
                (bitcoin!.priceUsd.asDecimal / Decimal.one))
            .toDecimal(scaleOnInfinitePrecision: 8)
            .toString();
      }
    }, [data, bitcoin]);

    final faitCurrency = useAccountFaitCurrency();

    return Column(
      children: [
        const SizedBox(height: 20),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Text(
                currentCurrencyNumberFormat(faitCurrency).currencySymbol,
                style: TextStyle(
                  color: context.colorScheme.thirdText,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(width: 4),
            Text(
              balance.currencyFormatWithoutSymbol(faitCurrency),
              style: TextStyle(
                color: context.colorScheme.primaryText,
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          context.l10n.balanceOfBtc(balanceOfBtc),
          style: TextStyle(
            color: context.colorScheme.thirdText,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          child: Padding(
            padding: const EdgeInsets.only(top: 24),
            child: AssetsAnalysisChartLayout(assets: data),
          ),
        ),
        const SizedBox(height: 32),
        const _ButtonBar(),
        const SizedBox(height: 24),
      ],
    );
  }
}

class _ButtonBar extends StatelessWidget {
  const _ButtonBar();

  @override
  Widget build(BuildContext context) {
    Future<void> onReceiveTap() async {
      final asset = await showAssetWithSearchSelectionBottomSheet(
        context,
        initialSelected: lastSelectedAddress,
      );
      if (asset == null) {
        return;
      }
      lastSelectedAddress = asset.assetId;
      context.push(assetDepositPath.toUri({'id': asset.assetId}));
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: HeaderButtonBarLayout(
        buttons: [
          HeaderButton.text(
            text: context.l10n.send,
            onTap: () async {
              final asset = await showSendAssetSelectionBottomSheet(
                context,
                initialSelected: lastSelectedAddress,
                onDepositPressed: onReceiveTap,
              );
              if (asset == null) {
                return;
              }
              lastSelectedAddress = asset.assetId;
              context.push(withdrawalPath.toUri({'id': asset.assetId}));
            },
          ),
          HeaderButton.text(
            text: context.l10n.receive,
            onTap: onReceiveTap,
          ),
          HeaderButton.text(
            text: context.l10n.buy,
            onTap: () async {
              context.push(buyChoosePath);
            },
          ),
          HeaderButton.text(
            text: context.l10n.swap,
            onTap: () => context.push(swapPath),
          ),
        ],
      ),
    );
  }
}
