import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:mixin_bot_sdk_dart/mixin_bot_sdk_dart.dart';

import '../../../db/mixin_database.dart';
import '../../../util/extension/extension.dart';
import '../brightness_observer.dart';

const kTransactionItemHeight = 70.0;

class TransactionItem extends StatelessWidget {
  const TransactionItem({Key? key, required this.item}) : super(key: key);

  final SnapshotItem item;

  @override
  Widget build(BuildContext context) {
    final isPositive = double.parse(item.amount) > 0;
    return Container(
        height: kTransactionItemHeight,
        padding: const EdgeInsets.only(top: 4, bottom: 20),
        child: Row(
          children: [
            const SizedBox(width: 20),
            _TransactionIcon(item: item),
            const SizedBox(width: 10),
            Expanded(
                child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(height: 3),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    _TransactionItemTitle(item: item),
                    const Spacer(),
                    Text(
                      '${isPositive ? '+' : ''}${item.amount.numberFormat()}',
                      style: TextStyle(
                        fontSize: 16,
                        color: BrightnessData.themeOf(context).secondaryText,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      DateFormat.yMMMMd().format(item.createdAt),
                      style: TextStyle(
                        fontSize: 14,
                        color: BrightnessData.themeOf(context).secondaryText,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      item.assetSymbol,
                      style: TextStyle(
                        fontSize: 12,
                        color: BrightnessData.themeOf(context).text,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 1),
              ],
            )),
            const SizedBox(width: 20),
          ],
        ));
  }
}

class _TransactionItemTitle extends StatelessWidget {
  const _TransactionItemTitle({Key? key, required this.item}) : super(key: key);

  final SnapshotItem item;

  @override
  Widget build(BuildContext context) {
    String title;
    switch (item.type) {
      case SnapshotType.pending:
        title = context.l10n.depositing;
        break;
      case SnapshotType.deposit:
        title = context.l10n.deposit;
        break;
      case SnapshotType.transfer:
        title = context.l10n.transfer;
        break;
      case SnapshotType.withdrawal:
        title = context.l10n.withdrawal;
        break;
      case SnapshotType.fee:
        title = context.l10n.fee;
        break;
      case SnapshotType.rebate:
        title = context.l10n.rebate;
        break;
      case SnapshotType.raw:
        title = context.l10n.raw;
        break;
      default:
        title = item.type;
        break;
    }

    return Text(
      title,
      style: TextStyle(
        fontSize: 16,
        color: context.theme.text,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _TransactionIcon extends StatelessWidget {
  const _TransactionIcon({Key? key, required this.item}) : super(key: key);

  final SnapshotItem item;

  // TODO icon with type
  @override
  Widget build(BuildContext context) => Container(
        height: 44,
        width: 44,
        decoration: const BoxDecoration(
          color: Colors.amber,
          shape: BoxShape.circle,
        ),
      );
}
