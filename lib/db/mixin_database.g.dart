// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mixin_database.dart';

// **************************************************************************
// DriftDatabaseGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Addresse extends DataClass implements Insertable<Addresse> {
  final String addressId;
  final String type;
  final String assetId;
  final String destination;
  final String label;
  final DateTime updatedAt;
  final String reserve;
  final String fee;
  final String? tag;
  final String? dust;
  final String feeAssetId;
  const Addresse(
      {required this.addressId,
      required this.type,
      required this.assetId,
      required this.destination,
      required this.label,
      required this.updatedAt,
      required this.reserve,
      required this.fee,
      this.tag,
      this.dust,
      required this.feeAssetId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['address_id'] = Variable<String>(addressId);
    map['type'] = Variable<String>(type);
    map['asset_id'] = Variable<String>(assetId);
    map['destination'] = Variable<String>(destination);
    map['label'] = Variable<String>(label);
    {
      final converter = Addresses.$converter0;
      map['updated_at'] = Variable<int>(converter.toSql(updatedAt));
    }
    map['reserve'] = Variable<String>(reserve);
    map['fee'] = Variable<String>(fee);
    if (!nullToAbsent || tag != null) {
      map['tag'] = Variable<String>(tag);
    }
    if (!nullToAbsent || dust != null) {
      map['dust'] = Variable<String>(dust);
    }
    map['fee_asset_id'] = Variable<String>(feeAssetId);
    return map;
  }

  AddressesCompanion toCompanion(bool nullToAbsent) {
    return AddressesCompanion(
      addressId: Value(addressId),
      type: Value(type),
      assetId: Value(assetId),
      destination: Value(destination),
      label: Value(label),
      updatedAt: Value(updatedAt),
      reserve: Value(reserve),
      fee: Value(fee),
      tag: tag == null && nullToAbsent ? const Value.absent() : Value(tag),
      dust: dust == null && nullToAbsent ? const Value.absent() : Value(dust),
      feeAssetId: Value(feeAssetId),
    );
  }

  factory Addresse.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Addresse(
      addressId: serializer.fromJson<String>(json['address_id']),
      type: serializer.fromJson<String>(json['type']),
      assetId: serializer.fromJson<String>(json['asset_id']),
      destination: serializer.fromJson<String>(json['destination']),
      label: serializer.fromJson<String>(json['label']),
      updatedAt: serializer.fromJson<DateTime>(json['updated_at']),
      reserve: serializer.fromJson<String>(json['reserve']),
      fee: serializer.fromJson<String>(json['fee']),
      tag: serializer.fromJson<String?>(json['tag']),
      dust: serializer.fromJson<String?>(json['dust']),
      feeAssetId: serializer.fromJson<String>(json['fee_asset_id']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'address_id': serializer.toJson<String>(addressId),
      'type': serializer.toJson<String>(type),
      'asset_id': serializer.toJson<String>(assetId),
      'destination': serializer.toJson<String>(destination),
      'label': serializer.toJson<String>(label),
      'updated_at': serializer.toJson<DateTime>(updatedAt),
      'reserve': serializer.toJson<String>(reserve),
      'fee': serializer.toJson<String>(fee),
      'tag': serializer.toJson<String?>(tag),
      'dust': serializer.toJson<String?>(dust),
      'fee_asset_id': serializer.toJson<String>(feeAssetId),
    };
  }

  Addresse copyWith(
          {String? addressId,
          String? type,
          String? assetId,
          String? destination,
          String? label,
          DateTime? updatedAt,
          String? reserve,
          String? fee,
          Value<String?> tag = const Value.absent(),
          Value<String?> dust = const Value.absent(),
          String? feeAssetId}) =>
      Addresse(
        addressId: addressId ?? this.addressId,
        type: type ?? this.type,
        assetId: assetId ?? this.assetId,
        destination: destination ?? this.destination,
        label: label ?? this.label,
        updatedAt: updatedAt ?? this.updatedAt,
        reserve: reserve ?? this.reserve,
        fee: fee ?? this.fee,
        tag: tag.present ? tag.value : this.tag,
        dust: dust.present ? dust.value : this.dust,
        feeAssetId: feeAssetId ?? this.feeAssetId,
      );
  @override
  String toString() {
    return (StringBuffer('Addresse(')
          ..write('addressId: $addressId, ')
          ..write('type: $type, ')
          ..write('assetId: $assetId, ')
          ..write('destination: $destination, ')
          ..write('label: $label, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('reserve: $reserve, ')
          ..write('fee: $fee, ')
          ..write('tag: $tag, ')
          ..write('dust: $dust, ')
          ..write('feeAssetId: $feeAssetId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(addressId, type, assetId, destination, label,
      updatedAt, reserve, fee, tag, dust, feeAssetId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Addresse &&
          other.addressId == this.addressId &&
          other.type == this.type &&
          other.assetId == this.assetId &&
          other.destination == this.destination &&
          other.label == this.label &&
          other.updatedAt == this.updatedAt &&
          other.reserve == this.reserve &&
          other.fee == this.fee &&
          other.tag == this.tag &&
          other.dust == this.dust &&
          other.feeAssetId == this.feeAssetId);
}

class AddressesCompanion extends UpdateCompanion<Addresse> {
  final Value<String> addressId;
  final Value<String> type;
  final Value<String> assetId;
  final Value<String> destination;
  final Value<String> label;
  final Value<DateTime> updatedAt;
  final Value<String> reserve;
  final Value<String> fee;
  final Value<String?> tag;
  final Value<String?> dust;
  final Value<String> feeAssetId;
  const AddressesCompanion({
    this.addressId = const Value.absent(),
    this.type = const Value.absent(),
    this.assetId = const Value.absent(),
    this.destination = const Value.absent(),
    this.label = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.reserve = const Value.absent(),
    this.fee = const Value.absent(),
    this.tag = const Value.absent(),
    this.dust = const Value.absent(),
    this.feeAssetId = const Value.absent(),
  });
  AddressesCompanion.insert({
    required String addressId,
    required String type,
    required String assetId,
    required String destination,
    required String label,
    required DateTime updatedAt,
    required String reserve,
    required String fee,
    this.tag = const Value.absent(),
    this.dust = const Value.absent(),
    required String feeAssetId,
  })  : addressId = Value(addressId),
        type = Value(type),
        assetId = Value(assetId),
        destination = Value(destination),
        label = Value(label),
        updatedAt = Value(updatedAt),
        reserve = Value(reserve),
        fee = Value(fee),
        feeAssetId = Value(feeAssetId);
  static Insertable<Addresse> custom({
    Expression<String>? addressId,
    Expression<String>? type,
    Expression<String>? assetId,
    Expression<String>? destination,
    Expression<String>? label,
    Expression<int>? updatedAt,
    Expression<String>? reserve,
    Expression<String>? fee,
    Expression<String>? tag,
    Expression<String>? dust,
    Expression<String>? feeAssetId,
  }) {
    return RawValuesInsertable({
      if (addressId != null) 'address_id': addressId,
      if (type != null) 'type': type,
      if (assetId != null) 'asset_id': assetId,
      if (destination != null) 'destination': destination,
      if (label != null) 'label': label,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (reserve != null) 'reserve': reserve,
      if (fee != null) 'fee': fee,
      if (tag != null) 'tag': tag,
      if (dust != null) 'dust': dust,
      if (feeAssetId != null) 'fee_asset_id': feeAssetId,
    });
  }

  AddressesCompanion copyWith(
      {Value<String>? addressId,
      Value<String>? type,
      Value<String>? assetId,
      Value<String>? destination,
      Value<String>? label,
      Value<DateTime>? updatedAt,
      Value<String>? reserve,
      Value<String>? fee,
      Value<String?>? tag,
      Value<String?>? dust,
      Value<String>? feeAssetId}) {
    return AddressesCompanion(
      addressId: addressId ?? this.addressId,
      type: type ?? this.type,
      assetId: assetId ?? this.assetId,
      destination: destination ?? this.destination,
      label: label ?? this.label,
      updatedAt: updatedAt ?? this.updatedAt,
      reserve: reserve ?? this.reserve,
      fee: fee ?? this.fee,
      tag: tag ?? this.tag,
      dust: dust ?? this.dust,
      feeAssetId: feeAssetId ?? this.feeAssetId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (addressId.present) {
      map['address_id'] = Variable<String>(addressId.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (assetId.present) {
      map['asset_id'] = Variable<String>(assetId.value);
    }
    if (destination.present) {
      map['destination'] = Variable<String>(destination.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (updatedAt.present) {
      final converter = Addresses.$converter0;
      map['updated_at'] = Variable<int>(converter.toSql(updatedAt.value));
    }
    if (reserve.present) {
      map['reserve'] = Variable<String>(reserve.value);
    }
    if (fee.present) {
      map['fee'] = Variable<String>(fee.value);
    }
    if (tag.present) {
      map['tag'] = Variable<String>(tag.value);
    }
    if (dust.present) {
      map['dust'] = Variable<String>(dust.value);
    }
    if (feeAssetId.present) {
      map['fee_asset_id'] = Variable<String>(feeAssetId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AddressesCompanion(')
          ..write('addressId: $addressId, ')
          ..write('type: $type, ')
          ..write('assetId: $assetId, ')
          ..write('destination: $destination, ')
          ..write('label: $label, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('reserve: $reserve, ')
          ..write('fee: $fee, ')
          ..write('tag: $tag, ')
          ..write('dust: $dust, ')
          ..write('feeAssetId: $feeAssetId')
          ..write(')'))
        .toString();
  }
}

class Addresses extends Table with TableInfo<Addresses, Addresse> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Addresses(this.attachedDatabase, [this._alias]);
  final VerificationMeta _addressIdMeta = const VerificationMeta('addressId');
  late final GeneratedColumn<String> addressId = GeneratedColumn<String>(
      'address_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _assetIdMeta = const VerificationMeta('assetId');
  late final GeneratedColumn<String> assetId = GeneratedColumn<String>(
      'asset_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _destinationMeta =
      const VerificationMeta('destination');
  late final GeneratedColumn<String> destination = GeneratedColumn<String>(
      'destination', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _labelMeta = const VerificationMeta('label');
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  late final GeneratedColumnWithTypeConverter<DateTime, int> updatedAt =
      GeneratedColumn<int>('updated_at', aliasedName, false,
              type: DriftSqlType.int,
              requiredDuringInsert: true,
              $customConstraints: 'NOT NULL')
          .withConverter<DateTime>(Addresses.$converter0);
  final VerificationMeta _reserveMeta = const VerificationMeta('reserve');
  late final GeneratedColumn<String> reserve = GeneratedColumn<String>(
      'reserve', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _feeMeta = const VerificationMeta('fee');
  late final GeneratedColumn<String> fee = GeneratedColumn<String>(
      'fee', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _tagMeta = const VerificationMeta('tag');
  late final GeneratedColumn<String> tag = GeneratedColumn<String>(
      'tag', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _dustMeta = const VerificationMeta('dust');
  late final GeneratedColumn<String> dust = GeneratedColumn<String>(
      'dust', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _feeAssetIdMeta = const VerificationMeta('feeAssetId');
  late final GeneratedColumn<String> feeAssetId = GeneratedColumn<String>(
      'fee_asset_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns => [
        addressId,
        type,
        assetId,
        destination,
        label,
        updatedAt,
        reserve,
        fee,
        tag,
        dust,
        feeAssetId
      ];
  @override
  String get aliasedName => _alias ?? 'addresses';
  @override
  String get actualTableName => 'addresses';
  @override
  VerificationContext validateIntegrity(Insertable<Addresse> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('address_id')) {
      context.handle(_addressIdMeta,
          addressId.isAcceptableOrUnknown(data['address_id']!, _addressIdMeta));
    } else if (isInserting) {
      context.missing(_addressIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('asset_id')) {
      context.handle(_assetIdMeta,
          assetId.isAcceptableOrUnknown(data['asset_id']!, _assetIdMeta));
    } else if (isInserting) {
      context.missing(_assetIdMeta);
    }
    if (data.containsKey('destination')) {
      context.handle(
          _destinationMeta,
          destination.isAcceptableOrUnknown(
              data['destination']!, _destinationMeta));
    } else if (isInserting) {
      context.missing(_destinationMeta);
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    } else if (isInserting) {
      context.missing(_labelMeta);
    }
    context.handle(_updatedAtMeta, const VerificationResult.success());
    if (data.containsKey('reserve')) {
      context.handle(_reserveMeta,
          reserve.isAcceptableOrUnknown(data['reserve']!, _reserveMeta));
    } else if (isInserting) {
      context.missing(_reserveMeta);
    }
    if (data.containsKey('fee')) {
      context.handle(
          _feeMeta, fee.isAcceptableOrUnknown(data['fee']!, _feeMeta));
    } else if (isInserting) {
      context.missing(_feeMeta);
    }
    if (data.containsKey('tag')) {
      context.handle(
          _tagMeta, tag.isAcceptableOrUnknown(data['tag']!, _tagMeta));
    }
    if (data.containsKey('dust')) {
      context.handle(
          _dustMeta, dust.isAcceptableOrUnknown(data['dust']!, _dustMeta));
    }
    if (data.containsKey('fee_asset_id')) {
      context.handle(
          _feeAssetIdMeta,
          feeAssetId.isAcceptableOrUnknown(
              data['fee_asset_id']!, _feeAssetIdMeta));
    } else if (isInserting) {
      context.missing(_feeAssetIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {addressId};
  @override
  Addresse map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Addresse(
      addressId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}address_id'])!,
      type: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      assetId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}asset_id'])!,
      destination: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}destination'])!,
      label: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}label'])!,
      updatedAt: Addresses.$converter0.fromSql(attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}updated_at'])!),
      reserve: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}reserve'])!,
      fee: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}fee'])!,
      tag: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}tag']),
      dust: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}dust']),
      feeAssetId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}fee_asset_id'])!,
    );
  }

  @override
  Addresses createAlias(String alias) {
    return Addresses(attachedDatabase, alias);
  }

  static TypeConverter<DateTime, int> $converter0 =
      const MillisDateConverterNotnull();
  @override
  List<String> get customConstraints => const ['PRIMARY KEY(address_id)'];
  @override
  bool get dontWriteConstraints => true;
}

class Asset extends DataClass implements Insertable<Asset> {
  final String assetId;
  final String symbol;
  final String name;
  final String iconUrl;
  final String balance;
  final String? destination;
  final String? tag;
  final String priceBtc;
  final String priceUsd;
  final String chainId;
  final String changeUsd;
  final String changeBtc;
  final int confirmations;
  final String? assetKey;
  final String? reserve;
  final String? depositEntries;
  const Asset(
      {required this.assetId,
      required this.symbol,
      required this.name,
      required this.iconUrl,
      required this.balance,
      this.destination,
      this.tag,
      required this.priceBtc,
      required this.priceUsd,
      required this.chainId,
      required this.changeUsd,
      required this.changeBtc,
      required this.confirmations,
      this.assetKey,
      this.reserve,
      this.depositEntries});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['asset_id'] = Variable<String>(assetId);
    map['symbol'] = Variable<String>(symbol);
    map['name'] = Variable<String>(name);
    map['icon_url'] = Variable<String>(iconUrl);
    map['balance'] = Variable<String>(balance);
    if (!nullToAbsent || destination != null) {
      map['destination'] = Variable<String>(destination);
    }
    if (!nullToAbsent || tag != null) {
      map['tag'] = Variable<String>(tag);
    }
    map['price_btc'] = Variable<String>(priceBtc);
    map['price_usd'] = Variable<String>(priceUsd);
    map['chain_id'] = Variable<String>(chainId);
    map['change_usd'] = Variable<String>(changeUsd);
    map['change_btc'] = Variable<String>(changeBtc);
    map['confirmations'] = Variable<int>(confirmations);
    if (!nullToAbsent || assetKey != null) {
      map['asset_key'] = Variable<String>(assetKey);
    }
    if (!nullToAbsent || reserve != null) {
      map['reserve'] = Variable<String>(reserve);
    }
    if (!nullToAbsent || depositEntries != null) {
      map['deposit_entries'] = Variable<String>(depositEntries);
    }
    return map;
  }

  AssetsCompanion toCompanion(bool nullToAbsent) {
    return AssetsCompanion(
      assetId: Value(assetId),
      symbol: Value(symbol),
      name: Value(name),
      iconUrl: Value(iconUrl),
      balance: Value(balance),
      destination: destination == null && nullToAbsent
          ? const Value.absent()
          : Value(destination),
      tag: tag == null && nullToAbsent ? const Value.absent() : Value(tag),
      priceBtc: Value(priceBtc),
      priceUsd: Value(priceUsd),
      chainId: Value(chainId),
      changeUsd: Value(changeUsd),
      changeBtc: Value(changeBtc),
      confirmations: Value(confirmations),
      assetKey: assetKey == null && nullToAbsent
          ? const Value.absent()
          : Value(assetKey),
      reserve: reserve == null && nullToAbsent
          ? const Value.absent()
          : Value(reserve),
      depositEntries: depositEntries == null && nullToAbsent
          ? const Value.absent()
          : Value(depositEntries),
    );
  }

  factory Asset.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Asset(
      assetId: serializer.fromJson<String>(json['asset_id']),
      symbol: serializer.fromJson<String>(json['symbol']),
      name: serializer.fromJson<String>(json['name']),
      iconUrl: serializer.fromJson<String>(json['icon_url']),
      balance: serializer.fromJson<String>(json['balance']),
      destination: serializer.fromJson<String?>(json['destination']),
      tag: serializer.fromJson<String?>(json['tag']),
      priceBtc: serializer.fromJson<String>(json['price_btc']),
      priceUsd: serializer.fromJson<String>(json['price_usd']),
      chainId: serializer.fromJson<String>(json['chain_id']),
      changeUsd: serializer.fromJson<String>(json['change_usd']),
      changeBtc: serializer.fromJson<String>(json['change_btc']),
      confirmations: serializer.fromJson<int>(json['confirmations']),
      assetKey: serializer.fromJson<String?>(json['asset_key']),
      reserve: serializer.fromJson<String?>(json['reserve']),
      depositEntries: serializer.fromJson<String?>(json['deposit_entries']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'asset_id': serializer.toJson<String>(assetId),
      'symbol': serializer.toJson<String>(symbol),
      'name': serializer.toJson<String>(name),
      'icon_url': serializer.toJson<String>(iconUrl),
      'balance': serializer.toJson<String>(balance),
      'destination': serializer.toJson<String?>(destination),
      'tag': serializer.toJson<String?>(tag),
      'price_btc': serializer.toJson<String>(priceBtc),
      'price_usd': serializer.toJson<String>(priceUsd),
      'chain_id': serializer.toJson<String>(chainId),
      'change_usd': serializer.toJson<String>(changeUsd),
      'change_btc': serializer.toJson<String>(changeBtc),
      'confirmations': serializer.toJson<int>(confirmations),
      'asset_key': serializer.toJson<String?>(assetKey),
      'reserve': serializer.toJson<String?>(reserve),
      'deposit_entries': serializer.toJson<String?>(depositEntries),
    };
  }

  Asset copyWith(
          {String? assetId,
          String? symbol,
          String? name,
          String? iconUrl,
          String? balance,
          Value<String?> destination = const Value.absent(),
          Value<String?> tag = const Value.absent(),
          String? priceBtc,
          String? priceUsd,
          String? chainId,
          String? changeUsd,
          String? changeBtc,
          int? confirmations,
          Value<String?> assetKey = const Value.absent(),
          Value<String?> reserve = const Value.absent(),
          Value<String?> depositEntries = const Value.absent()}) =>
      Asset(
        assetId: assetId ?? this.assetId,
        symbol: symbol ?? this.symbol,
        name: name ?? this.name,
        iconUrl: iconUrl ?? this.iconUrl,
        balance: balance ?? this.balance,
        destination: destination.present ? destination.value : this.destination,
        tag: tag.present ? tag.value : this.tag,
        priceBtc: priceBtc ?? this.priceBtc,
        priceUsd: priceUsd ?? this.priceUsd,
        chainId: chainId ?? this.chainId,
        changeUsd: changeUsd ?? this.changeUsd,
        changeBtc: changeBtc ?? this.changeBtc,
        confirmations: confirmations ?? this.confirmations,
        assetKey: assetKey.present ? assetKey.value : this.assetKey,
        reserve: reserve.present ? reserve.value : this.reserve,
        depositEntries:
            depositEntries.present ? depositEntries.value : this.depositEntries,
      );
  @override
  String toString() {
    return (StringBuffer('Asset(')
          ..write('assetId: $assetId, ')
          ..write('symbol: $symbol, ')
          ..write('name: $name, ')
          ..write('iconUrl: $iconUrl, ')
          ..write('balance: $balance, ')
          ..write('destination: $destination, ')
          ..write('tag: $tag, ')
          ..write('priceBtc: $priceBtc, ')
          ..write('priceUsd: $priceUsd, ')
          ..write('chainId: $chainId, ')
          ..write('changeUsd: $changeUsd, ')
          ..write('changeBtc: $changeBtc, ')
          ..write('confirmations: $confirmations, ')
          ..write('assetKey: $assetKey, ')
          ..write('reserve: $reserve, ')
          ..write('depositEntries: $depositEntries')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      assetId,
      symbol,
      name,
      iconUrl,
      balance,
      destination,
      tag,
      priceBtc,
      priceUsd,
      chainId,
      changeUsd,
      changeBtc,
      confirmations,
      assetKey,
      reserve,
      depositEntries);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Asset &&
          other.assetId == this.assetId &&
          other.symbol == this.symbol &&
          other.name == this.name &&
          other.iconUrl == this.iconUrl &&
          other.balance == this.balance &&
          other.destination == this.destination &&
          other.tag == this.tag &&
          other.priceBtc == this.priceBtc &&
          other.priceUsd == this.priceUsd &&
          other.chainId == this.chainId &&
          other.changeUsd == this.changeUsd &&
          other.changeBtc == this.changeBtc &&
          other.confirmations == this.confirmations &&
          other.assetKey == this.assetKey &&
          other.reserve == this.reserve &&
          other.depositEntries == this.depositEntries);
}

class AssetsCompanion extends UpdateCompanion<Asset> {
  final Value<String> assetId;
  final Value<String> symbol;
  final Value<String> name;
  final Value<String> iconUrl;
  final Value<String> balance;
  final Value<String?> destination;
  final Value<String?> tag;
  final Value<String> priceBtc;
  final Value<String> priceUsd;
  final Value<String> chainId;
  final Value<String> changeUsd;
  final Value<String> changeBtc;
  final Value<int> confirmations;
  final Value<String?> assetKey;
  final Value<String?> reserve;
  final Value<String?> depositEntries;
  const AssetsCompanion({
    this.assetId = const Value.absent(),
    this.symbol = const Value.absent(),
    this.name = const Value.absent(),
    this.iconUrl = const Value.absent(),
    this.balance = const Value.absent(),
    this.destination = const Value.absent(),
    this.tag = const Value.absent(),
    this.priceBtc = const Value.absent(),
    this.priceUsd = const Value.absent(),
    this.chainId = const Value.absent(),
    this.changeUsd = const Value.absent(),
    this.changeBtc = const Value.absent(),
    this.confirmations = const Value.absent(),
    this.assetKey = const Value.absent(),
    this.reserve = const Value.absent(),
    this.depositEntries = const Value.absent(),
  });
  AssetsCompanion.insert({
    required String assetId,
    required String symbol,
    required String name,
    required String iconUrl,
    this.balance = const Value.absent(),
    this.destination = const Value.absent(),
    this.tag = const Value.absent(),
    required String priceBtc,
    required String priceUsd,
    required String chainId,
    required String changeUsd,
    required String changeBtc,
    required int confirmations,
    this.assetKey = const Value.absent(),
    this.reserve = const Value.absent(),
    this.depositEntries = const Value.absent(),
  })  : assetId = Value(assetId),
        symbol = Value(symbol),
        name = Value(name),
        iconUrl = Value(iconUrl),
        priceBtc = Value(priceBtc),
        priceUsd = Value(priceUsd),
        chainId = Value(chainId),
        changeUsd = Value(changeUsd),
        changeBtc = Value(changeBtc),
        confirmations = Value(confirmations);
  static Insertable<Asset> custom({
    Expression<String>? assetId,
    Expression<String>? symbol,
    Expression<String>? name,
    Expression<String>? iconUrl,
    Expression<String>? balance,
    Expression<String>? destination,
    Expression<String>? tag,
    Expression<String>? priceBtc,
    Expression<String>? priceUsd,
    Expression<String>? chainId,
    Expression<String>? changeUsd,
    Expression<String>? changeBtc,
    Expression<int>? confirmations,
    Expression<String>? assetKey,
    Expression<String>? reserve,
    Expression<String>? depositEntries,
  }) {
    return RawValuesInsertable({
      if (assetId != null) 'asset_id': assetId,
      if (symbol != null) 'symbol': symbol,
      if (name != null) 'name': name,
      if (iconUrl != null) 'icon_url': iconUrl,
      if (balance != null) 'balance': balance,
      if (destination != null) 'destination': destination,
      if (tag != null) 'tag': tag,
      if (priceBtc != null) 'price_btc': priceBtc,
      if (priceUsd != null) 'price_usd': priceUsd,
      if (chainId != null) 'chain_id': chainId,
      if (changeUsd != null) 'change_usd': changeUsd,
      if (changeBtc != null) 'change_btc': changeBtc,
      if (confirmations != null) 'confirmations': confirmations,
      if (assetKey != null) 'asset_key': assetKey,
      if (reserve != null) 'reserve': reserve,
      if (depositEntries != null) 'deposit_entries': depositEntries,
    });
  }

  AssetsCompanion copyWith(
      {Value<String>? assetId,
      Value<String>? symbol,
      Value<String>? name,
      Value<String>? iconUrl,
      Value<String>? balance,
      Value<String?>? destination,
      Value<String?>? tag,
      Value<String>? priceBtc,
      Value<String>? priceUsd,
      Value<String>? chainId,
      Value<String>? changeUsd,
      Value<String>? changeBtc,
      Value<int>? confirmations,
      Value<String?>? assetKey,
      Value<String?>? reserve,
      Value<String?>? depositEntries}) {
    return AssetsCompanion(
      assetId: assetId ?? this.assetId,
      symbol: symbol ?? this.symbol,
      name: name ?? this.name,
      iconUrl: iconUrl ?? this.iconUrl,
      balance: balance ?? this.balance,
      destination: destination ?? this.destination,
      tag: tag ?? this.tag,
      priceBtc: priceBtc ?? this.priceBtc,
      priceUsd: priceUsd ?? this.priceUsd,
      chainId: chainId ?? this.chainId,
      changeUsd: changeUsd ?? this.changeUsd,
      changeBtc: changeBtc ?? this.changeBtc,
      confirmations: confirmations ?? this.confirmations,
      assetKey: assetKey ?? this.assetKey,
      reserve: reserve ?? this.reserve,
      depositEntries: depositEntries ?? this.depositEntries,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (assetId.present) {
      map['asset_id'] = Variable<String>(assetId.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (iconUrl.present) {
      map['icon_url'] = Variable<String>(iconUrl.value);
    }
    if (balance.present) {
      map['balance'] = Variable<String>(balance.value);
    }
    if (destination.present) {
      map['destination'] = Variable<String>(destination.value);
    }
    if (tag.present) {
      map['tag'] = Variable<String>(tag.value);
    }
    if (priceBtc.present) {
      map['price_btc'] = Variable<String>(priceBtc.value);
    }
    if (priceUsd.present) {
      map['price_usd'] = Variable<String>(priceUsd.value);
    }
    if (chainId.present) {
      map['chain_id'] = Variable<String>(chainId.value);
    }
    if (changeUsd.present) {
      map['change_usd'] = Variable<String>(changeUsd.value);
    }
    if (changeBtc.present) {
      map['change_btc'] = Variable<String>(changeBtc.value);
    }
    if (confirmations.present) {
      map['confirmations'] = Variable<int>(confirmations.value);
    }
    if (assetKey.present) {
      map['asset_key'] = Variable<String>(assetKey.value);
    }
    if (reserve.present) {
      map['reserve'] = Variable<String>(reserve.value);
    }
    if (depositEntries.present) {
      map['deposit_entries'] = Variable<String>(depositEntries.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AssetsCompanion(')
          ..write('assetId: $assetId, ')
          ..write('symbol: $symbol, ')
          ..write('name: $name, ')
          ..write('iconUrl: $iconUrl, ')
          ..write('balance: $balance, ')
          ..write('destination: $destination, ')
          ..write('tag: $tag, ')
          ..write('priceBtc: $priceBtc, ')
          ..write('priceUsd: $priceUsd, ')
          ..write('chainId: $chainId, ')
          ..write('changeUsd: $changeUsd, ')
          ..write('changeBtc: $changeBtc, ')
          ..write('confirmations: $confirmations, ')
          ..write('assetKey: $assetKey, ')
          ..write('reserve: $reserve, ')
          ..write('depositEntries: $depositEntries')
          ..write(')'))
        .toString();
  }
}

class Assets extends Table with TableInfo<Assets, Asset> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Assets(this.attachedDatabase, [this._alias]);
  final VerificationMeta _assetIdMeta = const VerificationMeta('assetId');
  late final GeneratedColumn<String> assetId = GeneratedColumn<String>(
      'asset_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  late final GeneratedColumn<String> symbol = GeneratedColumn<String>(
      'symbol', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _iconUrlMeta = const VerificationMeta('iconUrl');
  late final GeneratedColumn<String> iconUrl = GeneratedColumn<String>(
      'icon_url', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _balanceMeta = const VerificationMeta('balance');
  late final GeneratedColumn<String> balance = GeneratedColumn<String>(
      'balance', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'0\'',
      defaultValue: const CustomExpression<String>('\'0\''));
  final VerificationMeta _destinationMeta =
      const VerificationMeta('destination');
  late final GeneratedColumn<String> destination = GeneratedColumn<String>(
      'destination', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'NULL');
  final VerificationMeta _tagMeta = const VerificationMeta('tag');
  late final GeneratedColumn<String> tag = GeneratedColumn<String>(
      'tag', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _priceBtcMeta = const VerificationMeta('priceBtc');
  late final GeneratedColumn<String> priceBtc = GeneratedColumn<String>(
      'price_btc', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _priceUsdMeta = const VerificationMeta('priceUsd');
  late final GeneratedColumn<String> priceUsd = GeneratedColumn<String>(
      'price_usd', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _chainIdMeta = const VerificationMeta('chainId');
  late final GeneratedColumn<String> chainId = GeneratedColumn<String>(
      'chain_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _changeUsdMeta = const VerificationMeta('changeUsd');
  late final GeneratedColumn<String> changeUsd = GeneratedColumn<String>(
      'change_usd', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _changeBtcMeta = const VerificationMeta('changeBtc');
  late final GeneratedColumn<String> changeBtc = GeneratedColumn<String>(
      'change_btc', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _confirmationsMeta =
      const VerificationMeta('confirmations');
  late final GeneratedColumn<int> confirmations = GeneratedColumn<int>(
      'confirmations', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _assetKeyMeta = const VerificationMeta('assetKey');
  late final GeneratedColumn<String> assetKey = GeneratedColumn<String>(
      'asset_key', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _reserveMeta = const VerificationMeta('reserve');
  late final GeneratedColumn<String> reserve = GeneratedColumn<String>(
      'reserve', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _depositEntriesMeta =
      const VerificationMeta('depositEntries');
  late final GeneratedColumn<String> depositEntries = GeneratedColumn<String>(
      'deposit_entries', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [
        assetId,
        symbol,
        name,
        iconUrl,
        balance,
        destination,
        tag,
        priceBtc,
        priceUsd,
        chainId,
        changeUsd,
        changeBtc,
        confirmations,
        assetKey,
        reserve,
        depositEntries
      ];
  @override
  String get aliasedName => _alias ?? 'assets';
  @override
  String get actualTableName => 'assets';
  @override
  VerificationContext validateIntegrity(Insertable<Asset> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('asset_id')) {
      context.handle(_assetIdMeta,
          assetId.isAcceptableOrUnknown(data['asset_id']!, _assetIdMeta));
    } else if (isInserting) {
      context.missing(_assetIdMeta);
    }
    if (data.containsKey('symbol')) {
      context.handle(_symbolMeta,
          symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta));
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('icon_url')) {
      context.handle(_iconUrlMeta,
          iconUrl.isAcceptableOrUnknown(data['icon_url']!, _iconUrlMeta));
    } else if (isInserting) {
      context.missing(_iconUrlMeta);
    }
    if (data.containsKey('balance')) {
      context.handle(_balanceMeta,
          balance.isAcceptableOrUnknown(data['balance']!, _balanceMeta));
    }
    if (data.containsKey('destination')) {
      context.handle(
          _destinationMeta,
          destination.isAcceptableOrUnknown(
              data['destination']!, _destinationMeta));
    }
    if (data.containsKey('tag')) {
      context.handle(
          _tagMeta, tag.isAcceptableOrUnknown(data['tag']!, _tagMeta));
    }
    if (data.containsKey('price_btc')) {
      context.handle(_priceBtcMeta,
          priceBtc.isAcceptableOrUnknown(data['price_btc']!, _priceBtcMeta));
    } else if (isInserting) {
      context.missing(_priceBtcMeta);
    }
    if (data.containsKey('price_usd')) {
      context.handle(_priceUsdMeta,
          priceUsd.isAcceptableOrUnknown(data['price_usd']!, _priceUsdMeta));
    } else if (isInserting) {
      context.missing(_priceUsdMeta);
    }
    if (data.containsKey('chain_id')) {
      context.handle(_chainIdMeta,
          chainId.isAcceptableOrUnknown(data['chain_id']!, _chainIdMeta));
    } else if (isInserting) {
      context.missing(_chainIdMeta);
    }
    if (data.containsKey('change_usd')) {
      context.handle(_changeUsdMeta,
          changeUsd.isAcceptableOrUnknown(data['change_usd']!, _changeUsdMeta));
    } else if (isInserting) {
      context.missing(_changeUsdMeta);
    }
    if (data.containsKey('change_btc')) {
      context.handle(_changeBtcMeta,
          changeBtc.isAcceptableOrUnknown(data['change_btc']!, _changeBtcMeta));
    } else if (isInserting) {
      context.missing(_changeBtcMeta);
    }
    if (data.containsKey('confirmations')) {
      context.handle(
          _confirmationsMeta,
          confirmations.isAcceptableOrUnknown(
              data['confirmations']!, _confirmationsMeta));
    } else if (isInserting) {
      context.missing(_confirmationsMeta);
    }
    if (data.containsKey('asset_key')) {
      context.handle(_assetKeyMeta,
          assetKey.isAcceptableOrUnknown(data['asset_key']!, _assetKeyMeta));
    }
    if (data.containsKey('reserve')) {
      context.handle(_reserveMeta,
          reserve.isAcceptableOrUnknown(data['reserve']!, _reserveMeta));
    }
    if (data.containsKey('deposit_entries')) {
      context.handle(
          _depositEntriesMeta,
          depositEntries.isAcceptableOrUnknown(
              data['deposit_entries']!, _depositEntriesMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {assetId};
  @override
  Asset map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Asset(
      assetId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}asset_id'])!,
      symbol: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}symbol'])!,
      name: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      iconUrl: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}icon_url'])!,
      balance: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}balance'])!,
      destination: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}destination']),
      tag: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}tag']),
      priceBtc: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}price_btc'])!,
      priceUsd: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}price_usd'])!,
      chainId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}chain_id'])!,
      changeUsd: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}change_usd'])!,
      changeBtc: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}change_btc'])!,
      confirmations: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}confirmations'])!,
      assetKey: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}asset_key']),
      reserve: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}reserve']),
      depositEntries: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}deposit_entries']),
    );
  }

  @override
  Assets createAlias(String alias) {
    return Assets(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const ['PRIMARY KEY(asset_id)'];
  @override
  bool get dontWriteConstraints => true;
}

class Snapshot extends DataClass implements Insertable<Snapshot> {
  final String snapshotId;
  final String type;
  final String assetId;
  final String amount;
  final DateTime createdAt;
  final String? opponentId;
  final String? traceId;
  final String? transactionHash;
  final String? sender;
  final String? receiver;
  final String? memo;
  final int? confirmations;
  final String? snapshotHash;
  final DateTime? snapshotAt;
  final String? state;
  const Snapshot(
      {required this.snapshotId,
      required this.type,
      required this.assetId,
      required this.amount,
      required this.createdAt,
      this.opponentId,
      this.traceId,
      this.transactionHash,
      this.sender,
      this.receiver,
      this.memo,
      this.confirmations,
      this.snapshotHash,
      this.snapshotAt,
      this.state});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['snapshot_id'] = Variable<String>(snapshotId);
    map['type'] = Variable<String>(type);
    map['asset_id'] = Variable<String>(assetId);
    map['amount'] = Variable<String>(amount);
    {
      final converter = Snapshots.$converter0;
      map['created_at'] = Variable<int>(converter.toSql(createdAt));
    }
    if (!nullToAbsent || opponentId != null) {
      map['opponent_id'] = Variable<String>(opponentId);
    }
    if (!nullToAbsent || traceId != null) {
      map['trace_id'] = Variable<String>(traceId);
    }
    if (!nullToAbsent || transactionHash != null) {
      map['transaction_hash'] = Variable<String>(transactionHash);
    }
    if (!nullToAbsent || sender != null) {
      map['sender'] = Variable<String>(sender);
    }
    if (!nullToAbsent || receiver != null) {
      map['receiver'] = Variable<String>(receiver);
    }
    if (!nullToAbsent || memo != null) {
      map['memo'] = Variable<String>(memo);
    }
    if (!nullToAbsent || confirmations != null) {
      map['confirmations'] = Variable<int>(confirmations);
    }
    if (!nullToAbsent || snapshotHash != null) {
      map['snapshot_hash'] = Variable<String>(snapshotHash);
    }
    if (!nullToAbsent || snapshotAt != null) {
      final converter = Snapshots.$converter1;
      map['snapshot_at'] = Variable<int>(converter.toSql(snapshotAt));
    }
    if (!nullToAbsent || state != null) {
      map['state'] = Variable<String>(state);
    }
    return map;
  }

  SnapshotsCompanion toCompanion(bool nullToAbsent) {
    return SnapshotsCompanion(
      snapshotId: Value(snapshotId),
      type: Value(type),
      assetId: Value(assetId),
      amount: Value(amount),
      createdAt: Value(createdAt),
      opponentId: opponentId == null && nullToAbsent
          ? const Value.absent()
          : Value(opponentId),
      traceId: traceId == null && nullToAbsent
          ? const Value.absent()
          : Value(traceId),
      transactionHash: transactionHash == null && nullToAbsent
          ? const Value.absent()
          : Value(transactionHash),
      sender:
          sender == null && nullToAbsent ? const Value.absent() : Value(sender),
      receiver: receiver == null && nullToAbsent
          ? const Value.absent()
          : Value(receiver),
      memo: memo == null && nullToAbsent ? const Value.absent() : Value(memo),
      confirmations: confirmations == null && nullToAbsent
          ? const Value.absent()
          : Value(confirmations),
      snapshotHash: snapshotHash == null && nullToAbsent
          ? const Value.absent()
          : Value(snapshotHash),
      snapshotAt: snapshotAt == null && nullToAbsent
          ? const Value.absent()
          : Value(snapshotAt),
      state:
          state == null && nullToAbsent ? const Value.absent() : Value(state),
    );
  }

  factory Snapshot.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Snapshot(
      snapshotId: serializer.fromJson<String>(json['snapshot_id']),
      type: serializer.fromJson<String>(json['type']),
      assetId: serializer.fromJson<String>(json['asset_id']),
      amount: serializer.fromJson<String>(json['amount']),
      createdAt: serializer.fromJson<DateTime>(json['created_at']),
      opponentId: serializer.fromJson<String?>(json['opponent_id']),
      traceId: serializer.fromJson<String?>(json['trace_id']),
      transactionHash: serializer.fromJson<String?>(json['transaction_hash']),
      sender: serializer.fromJson<String?>(json['sender']),
      receiver: serializer.fromJson<String?>(json['receiver']),
      memo: serializer.fromJson<String?>(json['memo']),
      confirmations: serializer.fromJson<int?>(json['confirmations']),
      snapshotHash: serializer.fromJson<String?>(json['snapshot_hash']),
      snapshotAt: serializer.fromJson<DateTime?>(json['snapshot_at']),
      state: serializer.fromJson<String?>(json['state']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'snapshot_id': serializer.toJson<String>(snapshotId),
      'type': serializer.toJson<String>(type),
      'asset_id': serializer.toJson<String>(assetId),
      'amount': serializer.toJson<String>(amount),
      'created_at': serializer.toJson<DateTime>(createdAt),
      'opponent_id': serializer.toJson<String?>(opponentId),
      'trace_id': serializer.toJson<String?>(traceId),
      'transaction_hash': serializer.toJson<String?>(transactionHash),
      'sender': serializer.toJson<String?>(sender),
      'receiver': serializer.toJson<String?>(receiver),
      'memo': serializer.toJson<String?>(memo),
      'confirmations': serializer.toJson<int?>(confirmations),
      'snapshot_hash': serializer.toJson<String?>(snapshotHash),
      'snapshot_at': serializer.toJson<DateTime?>(snapshotAt),
      'state': serializer.toJson<String?>(state),
    };
  }

  Snapshot copyWith(
          {String? snapshotId,
          String? type,
          String? assetId,
          String? amount,
          DateTime? createdAt,
          Value<String?> opponentId = const Value.absent(),
          Value<String?> traceId = const Value.absent(),
          Value<String?> transactionHash = const Value.absent(),
          Value<String?> sender = const Value.absent(),
          Value<String?> receiver = const Value.absent(),
          Value<String?> memo = const Value.absent(),
          Value<int?> confirmations = const Value.absent(),
          Value<String?> snapshotHash = const Value.absent(),
          Value<DateTime?> snapshotAt = const Value.absent(),
          Value<String?> state = const Value.absent()}) =>
      Snapshot(
        snapshotId: snapshotId ?? this.snapshotId,
        type: type ?? this.type,
        assetId: assetId ?? this.assetId,
        amount: amount ?? this.amount,
        createdAt: createdAt ?? this.createdAt,
        opponentId: opponentId.present ? opponentId.value : this.opponentId,
        traceId: traceId.present ? traceId.value : this.traceId,
        transactionHash: transactionHash.present
            ? transactionHash.value
            : this.transactionHash,
        sender: sender.present ? sender.value : this.sender,
        receiver: receiver.present ? receiver.value : this.receiver,
        memo: memo.present ? memo.value : this.memo,
        confirmations:
            confirmations.present ? confirmations.value : this.confirmations,
        snapshotHash:
            snapshotHash.present ? snapshotHash.value : this.snapshotHash,
        snapshotAt: snapshotAt.present ? snapshotAt.value : this.snapshotAt,
        state: state.present ? state.value : this.state,
      );
  @override
  String toString() {
    return (StringBuffer('Snapshot(')
          ..write('snapshotId: $snapshotId, ')
          ..write('type: $type, ')
          ..write('assetId: $assetId, ')
          ..write('amount: $amount, ')
          ..write('createdAt: $createdAt, ')
          ..write('opponentId: $opponentId, ')
          ..write('traceId: $traceId, ')
          ..write('transactionHash: $transactionHash, ')
          ..write('sender: $sender, ')
          ..write('receiver: $receiver, ')
          ..write('memo: $memo, ')
          ..write('confirmations: $confirmations, ')
          ..write('snapshotHash: $snapshotHash, ')
          ..write('snapshotAt: $snapshotAt, ')
          ..write('state: $state')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      snapshotId,
      type,
      assetId,
      amount,
      createdAt,
      opponentId,
      traceId,
      transactionHash,
      sender,
      receiver,
      memo,
      confirmations,
      snapshotHash,
      snapshotAt,
      state);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Snapshot &&
          other.snapshotId == this.snapshotId &&
          other.type == this.type &&
          other.assetId == this.assetId &&
          other.amount == this.amount &&
          other.createdAt == this.createdAt &&
          other.opponentId == this.opponentId &&
          other.traceId == this.traceId &&
          other.transactionHash == this.transactionHash &&
          other.sender == this.sender &&
          other.receiver == this.receiver &&
          other.memo == this.memo &&
          other.confirmations == this.confirmations &&
          other.snapshotHash == this.snapshotHash &&
          other.snapshotAt == this.snapshotAt &&
          other.state == this.state);
}

class SnapshotsCompanion extends UpdateCompanion<Snapshot> {
  final Value<String> snapshotId;
  final Value<String> type;
  final Value<String> assetId;
  final Value<String> amount;
  final Value<DateTime> createdAt;
  final Value<String?> opponentId;
  final Value<String?> traceId;
  final Value<String?> transactionHash;
  final Value<String?> sender;
  final Value<String?> receiver;
  final Value<String?> memo;
  final Value<int?> confirmations;
  final Value<String?> snapshotHash;
  final Value<DateTime?> snapshotAt;
  final Value<String?> state;
  const SnapshotsCompanion({
    this.snapshotId = const Value.absent(),
    this.type = const Value.absent(),
    this.assetId = const Value.absent(),
    this.amount = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.opponentId = const Value.absent(),
    this.traceId = const Value.absent(),
    this.transactionHash = const Value.absent(),
    this.sender = const Value.absent(),
    this.receiver = const Value.absent(),
    this.memo = const Value.absent(),
    this.confirmations = const Value.absent(),
    this.snapshotHash = const Value.absent(),
    this.snapshotAt = const Value.absent(),
    this.state = const Value.absent(),
  });
  SnapshotsCompanion.insert({
    required String snapshotId,
    required String type,
    required String assetId,
    required String amount,
    required DateTime createdAt,
    this.opponentId = const Value.absent(),
    this.traceId = const Value.absent(),
    this.transactionHash = const Value.absent(),
    this.sender = const Value.absent(),
    this.receiver = const Value.absent(),
    this.memo = const Value.absent(),
    this.confirmations = const Value.absent(),
    this.snapshotHash = const Value.absent(),
    this.snapshotAt = const Value.absent(),
    this.state = const Value.absent(),
  })  : snapshotId = Value(snapshotId),
        type = Value(type),
        assetId = Value(assetId),
        amount = Value(amount),
        createdAt = Value(createdAt);
  static Insertable<Snapshot> custom({
    Expression<String>? snapshotId,
    Expression<String>? type,
    Expression<String>? assetId,
    Expression<String>? amount,
    Expression<int>? createdAt,
    Expression<String>? opponentId,
    Expression<String>? traceId,
    Expression<String>? transactionHash,
    Expression<String>? sender,
    Expression<String>? receiver,
    Expression<String>? memo,
    Expression<int>? confirmations,
    Expression<String>? snapshotHash,
    Expression<int>? snapshotAt,
    Expression<String>? state,
  }) {
    return RawValuesInsertable({
      if (snapshotId != null) 'snapshot_id': snapshotId,
      if (type != null) 'type': type,
      if (assetId != null) 'asset_id': assetId,
      if (amount != null) 'amount': amount,
      if (createdAt != null) 'created_at': createdAt,
      if (opponentId != null) 'opponent_id': opponentId,
      if (traceId != null) 'trace_id': traceId,
      if (transactionHash != null) 'transaction_hash': transactionHash,
      if (sender != null) 'sender': sender,
      if (receiver != null) 'receiver': receiver,
      if (memo != null) 'memo': memo,
      if (confirmations != null) 'confirmations': confirmations,
      if (snapshotHash != null) 'snapshot_hash': snapshotHash,
      if (snapshotAt != null) 'snapshot_at': snapshotAt,
      if (state != null) 'state': state,
    });
  }

  SnapshotsCompanion copyWith(
      {Value<String>? snapshotId,
      Value<String>? type,
      Value<String>? assetId,
      Value<String>? amount,
      Value<DateTime>? createdAt,
      Value<String?>? opponentId,
      Value<String?>? traceId,
      Value<String?>? transactionHash,
      Value<String?>? sender,
      Value<String?>? receiver,
      Value<String?>? memo,
      Value<int?>? confirmations,
      Value<String?>? snapshotHash,
      Value<DateTime?>? snapshotAt,
      Value<String?>? state}) {
    return SnapshotsCompanion(
      snapshotId: snapshotId ?? this.snapshotId,
      type: type ?? this.type,
      assetId: assetId ?? this.assetId,
      amount: amount ?? this.amount,
      createdAt: createdAt ?? this.createdAt,
      opponentId: opponentId ?? this.opponentId,
      traceId: traceId ?? this.traceId,
      transactionHash: transactionHash ?? this.transactionHash,
      sender: sender ?? this.sender,
      receiver: receiver ?? this.receiver,
      memo: memo ?? this.memo,
      confirmations: confirmations ?? this.confirmations,
      snapshotHash: snapshotHash ?? this.snapshotHash,
      snapshotAt: snapshotAt ?? this.snapshotAt,
      state: state ?? this.state,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (snapshotId.present) {
      map['snapshot_id'] = Variable<String>(snapshotId.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (assetId.present) {
      map['asset_id'] = Variable<String>(assetId.value);
    }
    if (amount.present) {
      map['amount'] = Variable<String>(amount.value);
    }
    if (createdAt.present) {
      final converter = Snapshots.$converter0;
      map['created_at'] = Variable<int>(converter.toSql(createdAt.value));
    }
    if (opponentId.present) {
      map['opponent_id'] = Variable<String>(opponentId.value);
    }
    if (traceId.present) {
      map['trace_id'] = Variable<String>(traceId.value);
    }
    if (transactionHash.present) {
      map['transaction_hash'] = Variable<String>(transactionHash.value);
    }
    if (sender.present) {
      map['sender'] = Variable<String>(sender.value);
    }
    if (receiver.present) {
      map['receiver'] = Variable<String>(receiver.value);
    }
    if (memo.present) {
      map['memo'] = Variable<String>(memo.value);
    }
    if (confirmations.present) {
      map['confirmations'] = Variable<int>(confirmations.value);
    }
    if (snapshotHash.present) {
      map['snapshot_hash'] = Variable<String>(snapshotHash.value);
    }
    if (snapshotAt.present) {
      final converter = Snapshots.$converter1;
      map['snapshot_at'] = Variable<int>(converter.toSql(snapshotAt.value));
    }
    if (state.present) {
      map['state'] = Variable<String>(state.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SnapshotsCompanion(')
          ..write('snapshotId: $snapshotId, ')
          ..write('type: $type, ')
          ..write('assetId: $assetId, ')
          ..write('amount: $amount, ')
          ..write('createdAt: $createdAt, ')
          ..write('opponentId: $opponentId, ')
          ..write('traceId: $traceId, ')
          ..write('transactionHash: $transactionHash, ')
          ..write('sender: $sender, ')
          ..write('receiver: $receiver, ')
          ..write('memo: $memo, ')
          ..write('confirmations: $confirmations, ')
          ..write('snapshotHash: $snapshotHash, ')
          ..write('snapshotAt: $snapshotAt, ')
          ..write('state: $state')
          ..write(')'))
        .toString();
  }
}

class Snapshots extends Table with TableInfo<Snapshots, Snapshot> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Snapshots(this.attachedDatabase, [this._alias]);
  final VerificationMeta _snapshotIdMeta = const VerificationMeta('snapshotId');
  late final GeneratedColumn<String> snapshotId = GeneratedColumn<String>(
      'snapshot_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _assetIdMeta = const VerificationMeta('assetId');
  late final GeneratedColumn<String> assetId = GeneratedColumn<String>(
      'asset_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _amountMeta = const VerificationMeta('amount');
  late final GeneratedColumn<String> amount = GeneratedColumn<String>(
      'amount', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  late final GeneratedColumnWithTypeConverter<DateTime, int> createdAt =
      GeneratedColumn<int>('created_at', aliasedName, false,
              type: DriftSqlType.int,
              requiredDuringInsert: true,
              $customConstraints: 'NOT NULL')
          .withConverter<DateTime>(Snapshots.$converter0);
  final VerificationMeta _opponentIdMeta = const VerificationMeta('opponentId');
  late final GeneratedColumn<String> opponentId = GeneratedColumn<String>(
      'opponent_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _traceIdMeta = const VerificationMeta('traceId');
  late final GeneratedColumn<String> traceId = GeneratedColumn<String>(
      'trace_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _transactionHashMeta =
      const VerificationMeta('transactionHash');
  late final GeneratedColumn<String> transactionHash = GeneratedColumn<String>(
      'transaction_hash', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _senderMeta = const VerificationMeta('sender');
  late final GeneratedColumn<String> sender = GeneratedColumn<String>(
      'sender', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _receiverMeta = const VerificationMeta('receiver');
  late final GeneratedColumn<String> receiver = GeneratedColumn<String>(
      'receiver', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _memoMeta = const VerificationMeta('memo');
  late final GeneratedColumn<String> memo = GeneratedColumn<String>(
      'memo', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _confirmationsMeta =
      const VerificationMeta('confirmations');
  late final GeneratedColumn<int> confirmations = GeneratedColumn<int>(
      'confirmations', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _snapshotHashMeta =
      const VerificationMeta('snapshotHash');
  late final GeneratedColumn<String> snapshotHash = GeneratedColumn<String>(
      'snapshot_hash', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _snapshotAtMeta = const VerificationMeta('snapshotAt');
  late final GeneratedColumnWithTypeConverter<DateTime?, int> snapshotAt =
      GeneratedColumn<int>('snapshot_at', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              $customConstraints: '')
          .withConverter<DateTime?>(Snapshots.$converter1);
  final VerificationMeta _stateMeta = const VerificationMeta('state');
  late final GeneratedColumn<String> state = GeneratedColumn<String>(
      'state', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [
        snapshotId,
        type,
        assetId,
        amount,
        createdAt,
        opponentId,
        traceId,
        transactionHash,
        sender,
        receiver,
        memo,
        confirmations,
        snapshotHash,
        snapshotAt,
        state
      ];
  @override
  String get aliasedName => _alias ?? 'snapshots';
  @override
  String get actualTableName => 'snapshots';
  @override
  VerificationContext validateIntegrity(Insertable<Snapshot> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('snapshot_id')) {
      context.handle(
          _snapshotIdMeta,
          snapshotId.isAcceptableOrUnknown(
              data['snapshot_id']!, _snapshotIdMeta));
    } else if (isInserting) {
      context.missing(_snapshotIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('asset_id')) {
      context.handle(_assetIdMeta,
          assetId.isAcceptableOrUnknown(data['asset_id']!, _assetIdMeta));
    } else if (isInserting) {
      context.missing(_assetIdMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    context.handle(_createdAtMeta, const VerificationResult.success());
    if (data.containsKey('opponent_id')) {
      context.handle(
          _opponentIdMeta,
          opponentId.isAcceptableOrUnknown(
              data['opponent_id']!, _opponentIdMeta));
    }
    if (data.containsKey('trace_id')) {
      context.handle(_traceIdMeta,
          traceId.isAcceptableOrUnknown(data['trace_id']!, _traceIdMeta));
    }
    if (data.containsKey('transaction_hash')) {
      context.handle(
          _transactionHashMeta,
          transactionHash.isAcceptableOrUnknown(
              data['transaction_hash']!, _transactionHashMeta));
    }
    if (data.containsKey('sender')) {
      context.handle(_senderMeta,
          sender.isAcceptableOrUnknown(data['sender']!, _senderMeta));
    }
    if (data.containsKey('receiver')) {
      context.handle(_receiverMeta,
          receiver.isAcceptableOrUnknown(data['receiver']!, _receiverMeta));
    }
    if (data.containsKey('memo')) {
      context.handle(
          _memoMeta, memo.isAcceptableOrUnknown(data['memo']!, _memoMeta));
    }
    if (data.containsKey('confirmations')) {
      context.handle(
          _confirmationsMeta,
          confirmations.isAcceptableOrUnknown(
              data['confirmations']!, _confirmationsMeta));
    }
    if (data.containsKey('snapshot_hash')) {
      context.handle(
          _snapshotHashMeta,
          snapshotHash.isAcceptableOrUnknown(
              data['snapshot_hash']!, _snapshotHashMeta));
    }
    context.handle(_snapshotAtMeta, const VerificationResult.success());
    if (data.containsKey('state')) {
      context.handle(
          _stateMeta, state.isAcceptableOrUnknown(data['state']!, _stateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {snapshotId};
  @override
  Snapshot map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Snapshot(
      snapshotId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}snapshot_id'])!,
      type: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      assetId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}asset_id'])!,
      amount: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}amount'])!,
      createdAt: Snapshots.$converter0.fromSql(attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}created_at'])!),
      opponentId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}opponent_id']),
      traceId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}trace_id']),
      transactionHash: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}transaction_hash']),
      sender: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}sender']),
      receiver: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}receiver']),
      memo: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}memo']),
      confirmations: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}confirmations']),
      snapshotHash: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}snapshot_hash']),
      snapshotAt: Snapshots.$converter1.fromSql(attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}snapshot_at'])),
      state: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}state']),
    );
  }

  @override
  Snapshots createAlias(String alias) {
    return Snapshots(attachedDatabase, alias);
  }

  static TypeConverter<DateTime, int> $converter0 =
      const MillisDateConverterNotnull();
  static TypeConverter<DateTime?, int?> $converter1 =
      const MillisDateConverter();
  @override
  List<String> get customConstraints => const ['PRIMARY KEY(snapshot_id)'];
  @override
  bool get dontWriteConstraints => true;
}

class User extends DataClass implements Insertable<User> {
  final String userId;
  final String identityNumber;
  final UserRelationship? relationship;
  final String? fullName;
  final String? avatarUrl;
  final String? phone;
  final bool? isVerified;
  final DateTime? createdAt;
  final DateTime? muteUntil;
  final int? hasPin;
  final String? appId;
  final String? biography;
  final int? isScam;
  const User(
      {required this.userId,
      required this.identityNumber,
      this.relationship,
      this.fullName,
      this.avatarUrl,
      this.phone,
      this.isVerified,
      this.createdAt,
      this.muteUntil,
      this.hasPin,
      this.appId,
      this.biography,
      this.isScam});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_id'] = Variable<String>(userId);
    map['identity_number'] = Variable<String>(identityNumber);
    if (!nullToAbsent || relationship != null) {
      final converter = Users.$converter0;
      map['relationship'] = Variable<String>(converter.toSql(relationship));
    }
    if (!nullToAbsent || fullName != null) {
      map['full_name'] = Variable<String>(fullName);
    }
    if (!nullToAbsent || avatarUrl != null) {
      map['avatar_url'] = Variable<String>(avatarUrl);
    }
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<String>(phone);
    }
    if (!nullToAbsent || isVerified != null) {
      map['is_verified'] = Variable<bool>(isVerified);
    }
    if (!nullToAbsent || createdAt != null) {
      final converter = Users.$converter1;
      map['created_at'] = Variable<int>(converter.toSql(createdAt));
    }
    if (!nullToAbsent || muteUntil != null) {
      final converter = Users.$converter2;
      map['mute_until'] = Variable<int>(converter.toSql(muteUntil));
    }
    if (!nullToAbsent || hasPin != null) {
      map['has_pin'] = Variable<int>(hasPin);
    }
    if (!nullToAbsent || appId != null) {
      map['app_id'] = Variable<String>(appId);
    }
    if (!nullToAbsent || biography != null) {
      map['biography'] = Variable<String>(biography);
    }
    if (!nullToAbsent || isScam != null) {
      map['is_scam'] = Variable<int>(isScam);
    }
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      userId: Value(userId),
      identityNumber: Value(identityNumber),
      relationship: relationship == null && nullToAbsent
          ? const Value.absent()
          : Value(relationship),
      fullName: fullName == null && nullToAbsent
          ? const Value.absent()
          : Value(fullName),
      avatarUrl: avatarUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(avatarUrl),
      phone:
          phone == null && nullToAbsent ? const Value.absent() : Value(phone),
      isVerified: isVerified == null && nullToAbsent
          ? const Value.absent()
          : Value(isVerified),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      muteUntil: muteUntil == null && nullToAbsent
          ? const Value.absent()
          : Value(muteUntil),
      hasPin:
          hasPin == null && nullToAbsent ? const Value.absent() : Value(hasPin),
      appId:
          appId == null && nullToAbsent ? const Value.absent() : Value(appId),
      biography: biography == null && nullToAbsent
          ? const Value.absent()
          : Value(biography),
      isScam:
          isScam == null && nullToAbsent ? const Value.absent() : Value(isScam),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      userId: serializer.fromJson<String>(json['user_id']),
      identityNumber: serializer.fromJson<String>(json['identity_number']),
      relationship:
          serializer.fromJson<UserRelationship?>(json['relationship']),
      fullName: serializer.fromJson<String?>(json['full_name']),
      avatarUrl: serializer.fromJson<String?>(json['avatar_url']),
      phone: serializer.fromJson<String?>(json['phone']),
      isVerified: serializer.fromJson<bool?>(json['is_verified']),
      createdAt: serializer.fromJson<DateTime?>(json['created_at']),
      muteUntil: serializer.fromJson<DateTime?>(json['mute_until']),
      hasPin: serializer.fromJson<int?>(json['has_pin']),
      appId: serializer.fromJson<String?>(json['app_id']),
      biography: serializer.fromJson<String?>(json['biography']),
      isScam: serializer.fromJson<int?>(json['is_scam']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'user_id': serializer.toJson<String>(userId),
      'identity_number': serializer.toJson<String>(identityNumber),
      'relationship': serializer.toJson<UserRelationship?>(relationship),
      'full_name': serializer.toJson<String?>(fullName),
      'avatar_url': serializer.toJson<String?>(avatarUrl),
      'phone': serializer.toJson<String?>(phone),
      'is_verified': serializer.toJson<bool?>(isVerified),
      'created_at': serializer.toJson<DateTime?>(createdAt),
      'mute_until': serializer.toJson<DateTime?>(muteUntil),
      'has_pin': serializer.toJson<int?>(hasPin),
      'app_id': serializer.toJson<String?>(appId),
      'biography': serializer.toJson<String?>(biography),
      'is_scam': serializer.toJson<int?>(isScam),
    };
  }

  User copyWith(
          {String? userId,
          String? identityNumber,
          Value<UserRelationship?> relationship = const Value.absent(),
          Value<String?> fullName = const Value.absent(),
          Value<String?> avatarUrl = const Value.absent(),
          Value<String?> phone = const Value.absent(),
          Value<bool?> isVerified = const Value.absent(),
          Value<DateTime?> createdAt = const Value.absent(),
          Value<DateTime?> muteUntil = const Value.absent(),
          Value<int?> hasPin = const Value.absent(),
          Value<String?> appId = const Value.absent(),
          Value<String?> biography = const Value.absent(),
          Value<int?> isScam = const Value.absent()}) =>
      User(
        userId: userId ?? this.userId,
        identityNumber: identityNumber ?? this.identityNumber,
        relationship:
            relationship.present ? relationship.value : this.relationship,
        fullName: fullName.present ? fullName.value : this.fullName,
        avatarUrl: avatarUrl.present ? avatarUrl.value : this.avatarUrl,
        phone: phone.present ? phone.value : this.phone,
        isVerified: isVerified.present ? isVerified.value : this.isVerified,
        createdAt: createdAt.present ? createdAt.value : this.createdAt,
        muteUntil: muteUntil.present ? muteUntil.value : this.muteUntil,
        hasPin: hasPin.present ? hasPin.value : this.hasPin,
        appId: appId.present ? appId.value : this.appId,
        biography: biography.present ? biography.value : this.biography,
        isScam: isScam.present ? isScam.value : this.isScam,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('userId: $userId, ')
          ..write('identityNumber: $identityNumber, ')
          ..write('relationship: $relationship, ')
          ..write('fullName: $fullName, ')
          ..write('avatarUrl: $avatarUrl, ')
          ..write('phone: $phone, ')
          ..write('isVerified: $isVerified, ')
          ..write('createdAt: $createdAt, ')
          ..write('muteUntil: $muteUntil, ')
          ..write('hasPin: $hasPin, ')
          ..write('appId: $appId, ')
          ..write('biography: $biography, ')
          ..write('isScam: $isScam')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      userId,
      identityNumber,
      relationship,
      fullName,
      avatarUrl,
      phone,
      isVerified,
      createdAt,
      muteUntil,
      hasPin,
      appId,
      biography,
      isScam);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.userId == this.userId &&
          other.identityNumber == this.identityNumber &&
          other.relationship == this.relationship &&
          other.fullName == this.fullName &&
          other.avatarUrl == this.avatarUrl &&
          other.phone == this.phone &&
          other.isVerified == this.isVerified &&
          other.createdAt == this.createdAt &&
          other.muteUntil == this.muteUntil &&
          other.hasPin == this.hasPin &&
          other.appId == this.appId &&
          other.biography == this.biography &&
          other.isScam == this.isScam);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<String> userId;
  final Value<String> identityNumber;
  final Value<UserRelationship?> relationship;
  final Value<String?> fullName;
  final Value<String?> avatarUrl;
  final Value<String?> phone;
  final Value<bool?> isVerified;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> muteUntil;
  final Value<int?> hasPin;
  final Value<String?> appId;
  final Value<String?> biography;
  final Value<int?> isScam;
  const UsersCompanion({
    this.userId = const Value.absent(),
    this.identityNumber = const Value.absent(),
    this.relationship = const Value.absent(),
    this.fullName = const Value.absent(),
    this.avatarUrl = const Value.absent(),
    this.phone = const Value.absent(),
    this.isVerified = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.muteUntil = const Value.absent(),
    this.hasPin = const Value.absent(),
    this.appId = const Value.absent(),
    this.biography = const Value.absent(),
    this.isScam = const Value.absent(),
  });
  UsersCompanion.insert({
    required String userId,
    required String identityNumber,
    this.relationship = const Value.absent(),
    this.fullName = const Value.absent(),
    this.avatarUrl = const Value.absent(),
    this.phone = const Value.absent(),
    this.isVerified = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.muteUntil = const Value.absent(),
    this.hasPin = const Value.absent(),
    this.appId = const Value.absent(),
    this.biography = const Value.absent(),
    this.isScam = const Value.absent(),
  })  : userId = Value(userId),
        identityNumber = Value(identityNumber);
  static Insertable<User> custom({
    Expression<String>? userId,
    Expression<String>? identityNumber,
    Expression<String>? relationship,
    Expression<String>? fullName,
    Expression<String>? avatarUrl,
    Expression<String>? phone,
    Expression<bool>? isVerified,
    Expression<int>? createdAt,
    Expression<int>? muteUntil,
    Expression<int>? hasPin,
    Expression<String>? appId,
    Expression<String>? biography,
    Expression<int>? isScam,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (identityNumber != null) 'identity_number': identityNumber,
      if (relationship != null) 'relationship': relationship,
      if (fullName != null) 'full_name': fullName,
      if (avatarUrl != null) 'avatar_url': avatarUrl,
      if (phone != null) 'phone': phone,
      if (isVerified != null) 'is_verified': isVerified,
      if (createdAt != null) 'created_at': createdAt,
      if (muteUntil != null) 'mute_until': muteUntil,
      if (hasPin != null) 'has_pin': hasPin,
      if (appId != null) 'app_id': appId,
      if (biography != null) 'biography': biography,
      if (isScam != null) 'is_scam': isScam,
    });
  }

  UsersCompanion copyWith(
      {Value<String>? userId,
      Value<String>? identityNumber,
      Value<UserRelationship?>? relationship,
      Value<String?>? fullName,
      Value<String?>? avatarUrl,
      Value<String?>? phone,
      Value<bool?>? isVerified,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? muteUntil,
      Value<int?>? hasPin,
      Value<String?>? appId,
      Value<String?>? biography,
      Value<int?>? isScam}) {
    return UsersCompanion(
      userId: userId ?? this.userId,
      identityNumber: identityNumber ?? this.identityNumber,
      relationship: relationship ?? this.relationship,
      fullName: fullName ?? this.fullName,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      phone: phone ?? this.phone,
      isVerified: isVerified ?? this.isVerified,
      createdAt: createdAt ?? this.createdAt,
      muteUntil: muteUntil ?? this.muteUntil,
      hasPin: hasPin ?? this.hasPin,
      appId: appId ?? this.appId,
      biography: biography ?? this.biography,
      isScam: isScam ?? this.isScam,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (identityNumber.present) {
      map['identity_number'] = Variable<String>(identityNumber.value);
    }
    if (relationship.present) {
      final converter = Users.$converter0;
      map['relationship'] =
          Variable<String>(converter.toSql(relationship.value));
    }
    if (fullName.present) {
      map['full_name'] = Variable<String>(fullName.value);
    }
    if (avatarUrl.present) {
      map['avatar_url'] = Variable<String>(avatarUrl.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (isVerified.present) {
      map['is_verified'] = Variable<bool>(isVerified.value);
    }
    if (createdAt.present) {
      final converter = Users.$converter1;
      map['created_at'] = Variable<int>(converter.toSql(createdAt.value));
    }
    if (muteUntil.present) {
      final converter = Users.$converter2;
      map['mute_until'] = Variable<int>(converter.toSql(muteUntil.value));
    }
    if (hasPin.present) {
      map['has_pin'] = Variable<int>(hasPin.value);
    }
    if (appId.present) {
      map['app_id'] = Variable<String>(appId.value);
    }
    if (biography.present) {
      map['biography'] = Variable<String>(biography.value);
    }
    if (isScam.present) {
      map['is_scam'] = Variable<int>(isScam.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('userId: $userId, ')
          ..write('identityNumber: $identityNumber, ')
          ..write('relationship: $relationship, ')
          ..write('fullName: $fullName, ')
          ..write('avatarUrl: $avatarUrl, ')
          ..write('phone: $phone, ')
          ..write('isVerified: $isVerified, ')
          ..write('createdAt: $createdAt, ')
          ..write('muteUntil: $muteUntil, ')
          ..write('hasPin: $hasPin, ')
          ..write('appId: $appId, ')
          ..write('biography: $biography, ')
          ..write('isScam: $isScam')
          ..write(')'))
        .toString();
  }
}

class Users extends Table with TableInfo<Users, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Users(this.attachedDatabase, [this._alias]);
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _identityNumberMeta =
      const VerificationMeta('identityNumber');
  late final GeneratedColumn<String> identityNumber = GeneratedColumn<String>(
      'identity_number', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _relationshipMeta =
      const VerificationMeta('relationship');
  late final GeneratedColumnWithTypeConverter<UserRelationship?, String>
      relationship = GeneratedColumn<String>('relationship', aliasedName, true,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              $customConstraints: '')
          .withConverter<UserRelationship?>(Users.$converter0);
  final VerificationMeta _fullNameMeta = const VerificationMeta('fullName');
  late final GeneratedColumn<String> fullName = GeneratedColumn<String>(
      'full_name', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _avatarUrlMeta = const VerificationMeta('avatarUrl');
  late final GeneratedColumn<String> avatarUrl = GeneratedColumn<String>(
      'avatar_url', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _phoneMeta = const VerificationMeta('phone');
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
      'phone', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _isVerifiedMeta = const VerificationMeta('isVerified');
  late final GeneratedColumn<bool> isVerified = GeneratedColumn<bool>(
      'is_verified', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  late final GeneratedColumnWithTypeConverter<DateTime?, int> createdAt =
      GeneratedColumn<int>('created_at', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              $customConstraints: '')
          .withConverter<DateTime?>(Users.$converter1);
  final VerificationMeta _muteUntilMeta = const VerificationMeta('muteUntil');
  late final GeneratedColumnWithTypeConverter<DateTime?, int> muteUntil =
      GeneratedColumn<int>('mute_until', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              $customConstraints: '')
          .withConverter<DateTime?>(Users.$converter2);
  final VerificationMeta _hasPinMeta = const VerificationMeta('hasPin');
  late final GeneratedColumn<int> hasPin = GeneratedColumn<int>(
      'has_pin', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _appIdMeta = const VerificationMeta('appId');
  late final GeneratedColumn<String> appId = GeneratedColumn<String>(
      'app_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _biographyMeta = const VerificationMeta('biography');
  late final GeneratedColumn<String> biography = GeneratedColumn<String>(
      'biography', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _isScamMeta = const VerificationMeta('isScam');
  late final GeneratedColumn<int> isScam = GeneratedColumn<int>(
      'is_scam', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [
        userId,
        identityNumber,
        relationship,
        fullName,
        avatarUrl,
        phone,
        isVerified,
        createdAt,
        muteUntil,
        hasPin,
        appId,
        biography,
        isScam
      ];
  @override
  String get aliasedName => _alias ?? 'users';
  @override
  String get actualTableName => 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('identity_number')) {
      context.handle(
          _identityNumberMeta,
          identityNumber.isAcceptableOrUnknown(
              data['identity_number']!, _identityNumberMeta));
    } else if (isInserting) {
      context.missing(_identityNumberMeta);
    }
    context.handle(_relationshipMeta, const VerificationResult.success());
    if (data.containsKey('full_name')) {
      context.handle(_fullNameMeta,
          fullName.isAcceptableOrUnknown(data['full_name']!, _fullNameMeta));
    }
    if (data.containsKey('avatar_url')) {
      context.handle(_avatarUrlMeta,
          avatarUrl.isAcceptableOrUnknown(data['avatar_url']!, _avatarUrlMeta));
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    }
    if (data.containsKey('is_verified')) {
      context.handle(
          _isVerifiedMeta,
          isVerified.isAcceptableOrUnknown(
              data['is_verified']!, _isVerifiedMeta));
    }
    context.handle(_createdAtMeta, const VerificationResult.success());
    context.handle(_muteUntilMeta, const VerificationResult.success());
    if (data.containsKey('has_pin')) {
      context.handle(_hasPinMeta,
          hasPin.isAcceptableOrUnknown(data['has_pin']!, _hasPinMeta));
    }
    if (data.containsKey('app_id')) {
      context.handle(
          _appIdMeta, appId.isAcceptableOrUnknown(data['app_id']!, _appIdMeta));
    }
    if (data.containsKey('biography')) {
      context.handle(_biographyMeta,
          biography.isAcceptableOrUnknown(data['biography']!, _biographyMeta));
    }
    if (data.containsKey('is_scam')) {
      context.handle(_isScamMeta,
          isScam.isAcceptableOrUnknown(data['is_scam']!, _isScamMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      userId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      identityNumber: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}identity_number'])!,
      relationship: Users.$converter0.fromSql(attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}relationship'])),
      fullName: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}full_name']),
      avatarUrl: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}avatar_url']),
      phone: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}phone']),
      isVerified: attachedDatabase.options.types
          .read(DriftSqlType.bool, data['${effectivePrefix}is_verified']),
      createdAt: Users.$converter1.fromSql(attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}created_at'])),
      muteUntil: Users.$converter2.fromSql(attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}mute_until'])),
      hasPin: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}has_pin']),
      appId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}app_id']),
      biography: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}biography']),
      isScam: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}is_scam']),
    );
  }

  @override
  Users createAlias(String alias) {
    return Users(attachedDatabase, alias);
  }

  static TypeConverter<UserRelationship?, String?> $converter0 =
      const UserRelationshipConverter();
  static TypeConverter<DateTime?, int?> $converter1 =
      const MillisDateConverter();
  static TypeConverter<DateTime?, int?> $converter2 =
      const MillisDateConverter();
  @override
  List<String> get customConstraints => const ['PRIMARY KEY(user_id)'];
  @override
  bool get dontWriteConstraints => true;
}

class Fiat extends DataClass implements Insertable<Fiat> {
  final String code;
  final double rate;
  const Fiat({required this.code, required this.rate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['code'] = Variable<String>(code);
    map['rate'] = Variable<double>(rate);
    return map;
  }

  FiatsCompanion toCompanion(bool nullToAbsent) {
    return FiatsCompanion(
      code: Value(code),
      rate: Value(rate),
    );
  }

  factory Fiat.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Fiat(
      code: serializer.fromJson<String>(json['code']),
      rate: serializer.fromJson<double>(json['rate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'code': serializer.toJson<String>(code),
      'rate': serializer.toJson<double>(rate),
    };
  }

  Fiat copyWith({String? code, double? rate}) => Fiat(
        code: code ?? this.code,
        rate: rate ?? this.rate,
      );
  @override
  String toString() {
    return (StringBuffer('Fiat(')
          ..write('code: $code, ')
          ..write('rate: $rate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(code, rate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Fiat && other.code == this.code && other.rate == this.rate);
}

class FiatsCompanion extends UpdateCompanion<Fiat> {
  final Value<String> code;
  final Value<double> rate;
  const FiatsCompanion({
    this.code = const Value.absent(),
    this.rate = const Value.absent(),
  });
  FiatsCompanion.insert({
    required String code,
    required double rate,
  })  : code = Value(code),
        rate = Value(rate);
  static Insertable<Fiat> custom({
    Expression<String>? code,
    Expression<double>? rate,
  }) {
    return RawValuesInsertable({
      if (code != null) 'code': code,
      if (rate != null) 'rate': rate,
    });
  }

  FiatsCompanion copyWith({Value<String>? code, Value<double>? rate}) {
    return FiatsCompanion(
      code: code ?? this.code,
      rate: rate ?? this.rate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (rate.present) {
      map['rate'] = Variable<double>(rate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FiatsCompanion(')
          ..write('code: $code, ')
          ..write('rate: $rate')
          ..write(')'))
        .toString();
  }
}

class Fiats extends Table with TableInfo<Fiats, Fiat> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Fiats(this.attachedDatabase, [this._alias]);
  final VerificationMeta _codeMeta = const VerificationMeta('code');
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _rateMeta = const VerificationMeta('rate');
  late final GeneratedColumn<double> rate = GeneratedColumn<double>(
      'rate', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns => [code, rate];
  @override
  String get aliasedName => _alias ?? 'fiats';
  @override
  String get actualTableName => 'fiats';
  @override
  VerificationContext validateIntegrity(Insertable<Fiat> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('rate')) {
      context.handle(
          _rateMeta, rate.isAcceptableOrUnknown(data['rate']!, _rateMeta));
    } else if (isInserting) {
      context.missing(_rateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {code};
  @override
  Fiat map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Fiat(
      code: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
      rate: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}rate'])!,
    );
  }

  @override
  Fiats createAlias(String alias) {
    return Fiats(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const ['PRIMARY KEY(code)'];
  @override
  bool get dontWriteConstraints => true;
}

class AssetsExtraData extends DataClass implements Insertable<AssetsExtraData> {
  final String assetId;
  final bool? hidden;
  const AssetsExtraData({required this.assetId, this.hidden});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['asset_id'] = Variable<String>(assetId);
    if (!nullToAbsent || hidden != null) {
      map['hidden'] = Variable<bool>(hidden);
    }
    return map;
  }

  AssetsExtraCompanion toCompanion(bool nullToAbsent) {
    return AssetsExtraCompanion(
      assetId: Value(assetId),
      hidden:
          hidden == null && nullToAbsent ? const Value.absent() : Value(hidden),
    );
  }

  factory AssetsExtraData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AssetsExtraData(
      assetId: serializer.fromJson<String>(json['asset_id']),
      hidden: serializer.fromJson<bool?>(json['hidden']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'asset_id': serializer.toJson<String>(assetId),
      'hidden': serializer.toJson<bool?>(hidden),
    };
  }

  AssetsExtraData copyWith(
          {String? assetId, Value<bool?> hidden = const Value.absent()}) =>
      AssetsExtraData(
        assetId: assetId ?? this.assetId,
        hidden: hidden.present ? hidden.value : this.hidden,
      );
  @override
  String toString() {
    return (StringBuffer('AssetsExtraData(')
          ..write('assetId: $assetId, ')
          ..write('hidden: $hidden')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(assetId, hidden);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AssetsExtraData &&
          other.assetId == this.assetId &&
          other.hidden == this.hidden);
}

class AssetsExtraCompanion extends UpdateCompanion<AssetsExtraData> {
  final Value<String> assetId;
  final Value<bool?> hidden;
  const AssetsExtraCompanion({
    this.assetId = const Value.absent(),
    this.hidden = const Value.absent(),
  });
  AssetsExtraCompanion.insert({
    required String assetId,
    this.hidden = const Value.absent(),
  }) : assetId = Value(assetId);
  static Insertable<AssetsExtraData> custom({
    Expression<String>? assetId,
    Expression<bool>? hidden,
  }) {
    return RawValuesInsertable({
      if (assetId != null) 'asset_id': assetId,
      if (hidden != null) 'hidden': hidden,
    });
  }

  AssetsExtraCompanion copyWith(
      {Value<String>? assetId, Value<bool?>? hidden}) {
    return AssetsExtraCompanion(
      assetId: assetId ?? this.assetId,
      hidden: hidden ?? this.hidden,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (assetId.present) {
      map['asset_id'] = Variable<String>(assetId.value);
    }
    if (hidden.present) {
      map['hidden'] = Variable<bool>(hidden.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AssetsExtraCompanion(')
          ..write('assetId: $assetId, ')
          ..write('hidden: $hidden')
          ..write(')'))
        .toString();
  }
}

class AssetsExtra extends Table with TableInfo<AssetsExtra, AssetsExtraData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  AssetsExtra(this.attachedDatabase, [this._alias]);
  final VerificationMeta _assetIdMeta = const VerificationMeta('assetId');
  late final GeneratedColumn<String> assetId = GeneratedColumn<String>(
      'asset_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _hiddenMeta = const VerificationMeta('hidden');
  late final GeneratedColumn<bool> hidden = GeneratedColumn<bool>(
      'hidden', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [assetId, hidden];
  @override
  String get aliasedName => _alias ?? 'assets_extra';
  @override
  String get actualTableName => 'assets_extra';
  @override
  VerificationContext validateIntegrity(Insertable<AssetsExtraData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('asset_id')) {
      context.handle(_assetIdMeta,
          assetId.isAcceptableOrUnknown(data['asset_id']!, _assetIdMeta));
    } else if (isInserting) {
      context.missing(_assetIdMeta);
    }
    if (data.containsKey('hidden')) {
      context.handle(_hiddenMeta,
          hidden.isAcceptableOrUnknown(data['hidden']!, _hiddenMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {assetId};
  @override
  AssetsExtraData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AssetsExtraData(
      assetId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}asset_id'])!,
      hidden: attachedDatabase.options.types
          .read(DriftSqlType.bool, data['${effectivePrefix}hidden']),
    );
  }

  @override
  AssetsExtra createAlias(String alias) {
    return AssetsExtra(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const ['PRIMARY KEY(asset_id)'];
  @override
  bool get dontWriteConstraints => true;
}

class CollectibleTokenMetaData extends DataClass
    implements Insertable<CollectibleTokenMetaData> {
  final String group;
  final String name;
  final String description;
  final String iconUrl;
  final String mediaUrl;
  final String mime;
  final String hash;
  final String tokenId;
  const CollectibleTokenMetaData(
      {required this.group,
      required this.name,
      required this.description,
      required this.iconUrl,
      required this.mediaUrl,
      required this.mime,
      required this.hash,
      required this.tokenId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['group'] = Variable<String>(group);
    map['name'] = Variable<String>(name);
    map['description'] = Variable<String>(description);
    map['icon_url'] = Variable<String>(iconUrl);
    map['media_url'] = Variable<String>(mediaUrl);
    map['mime'] = Variable<String>(mime);
    map['hash'] = Variable<String>(hash);
    map['token_id'] = Variable<String>(tokenId);
    return map;
  }

  CollectibleTokenMetaCompanion toCompanion(bool nullToAbsent) {
    return CollectibleTokenMetaCompanion(
      group: Value(group),
      name: Value(name),
      description: Value(description),
      iconUrl: Value(iconUrl),
      mediaUrl: Value(mediaUrl),
      mime: Value(mime),
      hash: Value(hash),
      tokenId: Value(tokenId),
    );
  }

  factory CollectibleTokenMetaData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CollectibleTokenMetaData(
      group: serializer.fromJson<String>(json['group']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      iconUrl: serializer.fromJson<String>(json['icon_url']),
      mediaUrl: serializer.fromJson<String>(json['media_url']),
      mime: serializer.fromJson<String>(json['mime']),
      hash: serializer.fromJson<String>(json['hash']),
      tokenId: serializer.fromJson<String>(json['token_id']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'group': serializer.toJson<String>(group),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'icon_url': serializer.toJson<String>(iconUrl),
      'media_url': serializer.toJson<String>(mediaUrl),
      'mime': serializer.toJson<String>(mime),
      'hash': serializer.toJson<String>(hash),
      'token_id': serializer.toJson<String>(tokenId),
    };
  }

  CollectibleTokenMetaData copyWith(
          {String? group,
          String? name,
          String? description,
          String? iconUrl,
          String? mediaUrl,
          String? mime,
          String? hash,
          String? tokenId}) =>
      CollectibleTokenMetaData(
        group: group ?? this.group,
        name: name ?? this.name,
        description: description ?? this.description,
        iconUrl: iconUrl ?? this.iconUrl,
        mediaUrl: mediaUrl ?? this.mediaUrl,
        mime: mime ?? this.mime,
        hash: hash ?? this.hash,
        tokenId: tokenId ?? this.tokenId,
      );
  @override
  String toString() {
    return (StringBuffer('CollectibleTokenMetaData(')
          ..write('group: $group, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('iconUrl: $iconUrl, ')
          ..write('mediaUrl: $mediaUrl, ')
          ..write('mime: $mime, ')
          ..write('hash: $hash, ')
          ..write('tokenId: $tokenId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      group, name, description, iconUrl, mediaUrl, mime, hash, tokenId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CollectibleTokenMetaData &&
          other.group == this.group &&
          other.name == this.name &&
          other.description == this.description &&
          other.iconUrl == this.iconUrl &&
          other.mediaUrl == this.mediaUrl &&
          other.mime == this.mime &&
          other.hash == this.hash &&
          other.tokenId == this.tokenId);
}

class CollectibleTokenMetaCompanion
    extends UpdateCompanion<CollectibleTokenMetaData> {
  final Value<String> group;
  final Value<String> name;
  final Value<String> description;
  final Value<String> iconUrl;
  final Value<String> mediaUrl;
  final Value<String> mime;
  final Value<String> hash;
  final Value<String> tokenId;
  const CollectibleTokenMetaCompanion({
    this.group = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.iconUrl = const Value.absent(),
    this.mediaUrl = const Value.absent(),
    this.mime = const Value.absent(),
    this.hash = const Value.absent(),
    this.tokenId = const Value.absent(),
  });
  CollectibleTokenMetaCompanion.insert({
    required String group,
    required String name,
    required String description,
    required String iconUrl,
    required String mediaUrl,
    required String mime,
    required String hash,
    required String tokenId,
  })  : group = Value(group),
        name = Value(name),
        description = Value(description),
        iconUrl = Value(iconUrl),
        mediaUrl = Value(mediaUrl),
        mime = Value(mime),
        hash = Value(hash),
        tokenId = Value(tokenId);
  static Insertable<CollectibleTokenMetaData> custom({
    Expression<String>? group,
    Expression<String>? name,
    Expression<String>? description,
    Expression<String>? iconUrl,
    Expression<String>? mediaUrl,
    Expression<String>? mime,
    Expression<String>? hash,
    Expression<String>? tokenId,
  }) {
    return RawValuesInsertable({
      if (group != null) 'group': group,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (iconUrl != null) 'icon_url': iconUrl,
      if (mediaUrl != null) 'media_url': mediaUrl,
      if (mime != null) 'mime': mime,
      if (hash != null) 'hash': hash,
      if (tokenId != null) 'token_id': tokenId,
    });
  }

  CollectibleTokenMetaCompanion copyWith(
      {Value<String>? group,
      Value<String>? name,
      Value<String>? description,
      Value<String>? iconUrl,
      Value<String>? mediaUrl,
      Value<String>? mime,
      Value<String>? hash,
      Value<String>? tokenId}) {
    return CollectibleTokenMetaCompanion(
      group: group ?? this.group,
      name: name ?? this.name,
      description: description ?? this.description,
      iconUrl: iconUrl ?? this.iconUrl,
      mediaUrl: mediaUrl ?? this.mediaUrl,
      mime: mime ?? this.mime,
      hash: hash ?? this.hash,
      tokenId: tokenId ?? this.tokenId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (group.present) {
      map['group'] = Variable<String>(group.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (iconUrl.present) {
      map['icon_url'] = Variable<String>(iconUrl.value);
    }
    if (mediaUrl.present) {
      map['media_url'] = Variable<String>(mediaUrl.value);
    }
    if (mime.present) {
      map['mime'] = Variable<String>(mime.value);
    }
    if (hash.present) {
      map['hash'] = Variable<String>(hash.value);
    }
    if (tokenId.present) {
      map['token_id'] = Variable<String>(tokenId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CollectibleTokenMetaCompanion(')
          ..write('group: $group, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('iconUrl: $iconUrl, ')
          ..write('mediaUrl: $mediaUrl, ')
          ..write('mime: $mime, ')
          ..write('hash: $hash, ')
          ..write('tokenId: $tokenId')
          ..write(')'))
        .toString();
  }
}

class CollectibleTokenMeta extends Table
    with TableInfo<CollectibleTokenMeta, CollectibleTokenMetaData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  CollectibleTokenMeta(this.attachedDatabase, [this._alias]);
  final VerificationMeta _groupMeta = const VerificationMeta('group');
  late final GeneratedColumn<String> group = GeneratedColumn<String>(
      'group', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _iconUrlMeta = const VerificationMeta('iconUrl');
  late final GeneratedColumn<String> iconUrl = GeneratedColumn<String>(
      'icon_url', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _mediaUrlMeta = const VerificationMeta('mediaUrl');
  late final GeneratedColumn<String> mediaUrl = GeneratedColumn<String>(
      'media_url', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _mimeMeta = const VerificationMeta('mime');
  late final GeneratedColumn<String> mime = GeneratedColumn<String>(
      'mime', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _hashMeta = const VerificationMeta('hash');
  late final GeneratedColumn<String> hash = GeneratedColumn<String>(
      'hash', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _tokenIdMeta = const VerificationMeta('tokenId');
  late final GeneratedColumn<String> tokenId = GeneratedColumn<String>(
      'token_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns =>
      [group, name, description, iconUrl, mediaUrl, mime, hash, tokenId];
  @override
  String get aliasedName => _alias ?? 'collectible_token_meta';
  @override
  String get actualTableName => 'collectible_token_meta';
  @override
  VerificationContext validateIntegrity(
      Insertable<CollectibleTokenMetaData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('group')) {
      context.handle(
          _groupMeta, group.isAcceptableOrUnknown(data['group']!, _groupMeta));
    } else if (isInserting) {
      context.missing(_groupMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('icon_url')) {
      context.handle(_iconUrlMeta,
          iconUrl.isAcceptableOrUnknown(data['icon_url']!, _iconUrlMeta));
    } else if (isInserting) {
      context.missing(_iconUrlMeta);
    }
    if (data.containsKey('media_url')) {
      context.handle(_mediaUrlMeta,
          mediaUrl.isAcceptableOrUnknown(data['media_url']!, _mediaUrlMeta));
    } else if (isInserting) {
      context.missing(_mediaUrlMeta);
    }
    if (data.containsKey('mime')) {
      context.handle(
          _mimeMeta, mime.isAcceptableOrUnknown(data['mime']!, _mimeMeta));
    } else if (isInserting) {
      context.missing(_mimeMeta);
    }
    if (data.containsKey('hash')) {
      context.handle(
          _hashMeta, hash.isAcceptableOrUnknown(data['hash']!, _hashMeta));
    } else if (isInserting) {
      context.missing(_hashMeta);
    }
    if (data.containsKey('token_id')) {
      context.handle(_tokenIdMeta,
          tokenId.isAcceptableOrUnknown(data['token_id']!, _tokenIdMeta));
    } else if (isInserting) {
      context.missing(_tokenIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {tokenId};
  @override
  CollectibleTokenMetaData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CollectibleTokenMetaData(
      group: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}group'])!,
      name: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      description: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      iconUrl: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}icon_url'])!,
      mediaUrl: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}media_url'])!,
      mime: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}mime'])!,
      hash: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}hash'])!,
      tokenId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}token_id'])!,
    );
  }

  @override
  CollectibleTokenMeta createAlias(String alias) {
    return CollectibleTokenMeta(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const ['PRIMARY KEY(token_id)'];
  @override
  bool get dontWriteConstraints => true;
}

class CollectibleTokenData extends DataClass
    implements Insertable<CollectibleTokenData> {
  final String type;
  final String tokenId;
  final String group;
  final String token;
  final String mixinId;
  final String nfo;
  final DateTime createdAt;
  final String metaHash;
  final String collectionId;
  const CollectibleTokenData(
      {required this.type,
      required this.tokenId,
      required this.group,
      required this.token,
      required this.mixinId,
      required this.nfo,
      required this.createdAt,
      required this.metaHash,
      required this.collectionId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['type'] = Variable<String>(type);
    map['token_id'] = Variable<String>(tokenId);
    map['group'] = Variable<String>(group);
    map['token'] = Variable<String>(token);
    map['mixin_id'] = Variable<String>(mixinId);
    map['nfo'] = Variable<String>(nfo);
    {
      final converter = CollectibleToken.$converter0;
      map['created_at'] = Variable<int>(converter.toSql(createdAt));
    }
    map['meta_hash'] = Variable<String>(metaHash);
    map['collection_id'] = Variable<String>(collectionId);
    return map;
  }

  CollectibleTokenCompanion toCompanion(bool nullToAbsent) {
    return CollectibleTokenCompanion(
      type: Value(type),
      tokenId: Value(tokenId),
      group: Value(group),
      token: Value(token),
      mixinId: Value(mixinId),
      nfo: Value(nfo),
      createdAt: Value(createdAt),
      metaHash: Value(metaHash),
      collectionId: Value(collectionId),
    );
  }

  factory CollectibleTokenData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CollectibleTokenData(
      type: serializer.fromJson<String>(json['type']),
      tokenId: serializer.fromJson<String>(json['token_id']),
      group: serializer.fromJson<String>(json['group']),
      token: serializer.fromJson<String>(json['token']),
      mixinId: serializer.fromJson<String>(json['mixin_id']),
      nfo: serializer.fromJson<String>(json['nfo']),
      createdAt: serializer.fromJson<DateTime>(json['created_at']),
      metaHash: serializer.fromJson<String>(json['meta_hash']),
      collectionId: serializer.fromJson<String>(json['collection_id']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'type': serializer.toJson<String>(type),
      'token_id': serializer.toJson<String>(tokenId),
      'group': serializer.toJson<String>(group),
      'token': serializer.toJson<String>(token),
      'mixin_id': serializer.toJson<String>(mixinId),
      'nfo': serializer.toJson<String>(nfo),
      'created_at': serializer.toJson<DateTime>(createdAt),
      'meta_hash': serializer.toJson<String>(metaHash),
      'collection_id': serializer.toJson<String>(collectionId),
    };
  }

  CollectibleTokenData copyWith(
          {String? type,
          String? tokenId,
          String? group,
          String? token,
          String? mixinId,
          String? nfo,
          DateTime? createdAt,
          String? metaHash,
          String? collectionId}) =>
      CollectibleTokenData(
        type: type ?? this.type,
        tokenId: tokenId ?? this.tokenId,
        group: group ?? this.group,
        token: token ?? this.token,
        mixinId: mixinId ?? this.mixinId,
        nfo: nfo ?? this.nfo,
        createdAt: createdAt ?? this.createdAt,
        metaHash: metaHash ?? this.metaHash,
        collectionId: collectionId ?? this.collectionId,
      );
  @override
  String toString() {
    return (StringBuffer('CollectibleTokenData(')
          ..write('type: $type, ')
          ..write('tokenId: $tokenId, ')
          ..write('group: $group, ')
          ..write('token: $token, ')
          ..write('mixinId: $mixinId, ')
          ..write('nfo: $nfo, ')
          ..write('createdAt: $createdAt, ')
          ..write('metaHash: $metaHash, ')
          ..write('collectionId: $collectionId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(type, tokenId, group, token, mixinId, nfo,
      createdAt, metaHash, collectionId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CollectibleTokenData &&
          other.type == this.type &&
          other.tokenId == this.tokenId &&
          other.group == this.group &&
          other.token == this.token &&
          other.mixinId == this.mixinId &&
          other.nfo == this.nfo &&
          other.createdAt == this.createdAt &&
          other.metaHash == this.metaHash &&
          other.collectionId == this.collectionId);
}

class CollectibleTokenCompanion extends UpdateCompanion<CollectibleTokenData> {
  final Value<String> type;
  final Value<String> tokenId;
  final Value<String> group;
  final Value<String> token;
  final Value<String> mixinId;
  final Value<String> nfo;
  final Value<DateTime> createdAt;
  final Value<String> metaHash;
  final Value<String> collectionId;
  const CollectibleTokenCompanion({
    this.type = const Value.absent(),
    this.tokenId = const Value.absent(),
    this.group = const Value.absent(),
    this.token = const Value.absent(),
    this.mixinId = const Value.absent(),
    this.nfo = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.metaHash = const Value.absent(),
    this.collectionId = const Value.absent(),
  });
  CollectibleTokenCompanion.insert({
    required String type,
    required String tokenId,
    required String group,
    required String token,
    required String mixinId,
    required String nfo,
    required DateTime createdAt,
    required String metaHash,
    required String collectionId,
  })  : type = Value(type),
        tokenId = Value(tokenId),
        group = Value(group),
        token = Value(token),
        mixinId = Value(mixinId),
        nfo = Value(nfo),
        createdAt = Value(createdAt),
        metaHash = Value(metaHash),
        collectionId = Value(collectionId);
  static Insertable<CollectibleTokenData> custom({
    Expression<String>? type,
    Expression<String>? tokenId,
    Expression<String>? group,
    Expression<String>? token,
    Expression<String>? mixinId,
    Expression<String>? nfo,
    Expression<int>? createdAt,
    Expression<String>? metaHash,
    Expression<String>? collectionId,
  }) {
    return RawValuesInsertable({
      if (type != null) 'type': type,
      if (tokenId != null) 'token_id': tokenId,
      if (group != null) 'group': group,
      if (token != null) 'token': token,
      if (mixinId != null) 'mixin_id': mixinId,
      if (nfo != null) 'nfo': nfo,
      if (createdAt != null) 'created_at': createdAt,
      if (metaHash != null) 'meta_hash': metaHash,
      if (collectionId != null) 'collection_id': collectionId,
    });
  }

  CollectibleTokenCompanion copyWith(
      {Value<String>? type,
      Value<String>? tokenId,
      Value<String>? group,
      Value<String>? token,
      Value<String>? mixinId,
      Value<String>? nfo,
      Value<DateTime>? createdAt,
      Value<String>? metaHash,
      Value<String>? collectionId}) {
    return CollectibleTokenCompanion(
      type: type ?? this.type,
      tokenId: tokenId ?? this.tokenId,
      group: group ?? this.group,
      token: token ?? this.token,
      mixinId: mixinId ?? this.mixinId,
      nfo: nfo ?? this.nfo,
      createdAt: createdAt ?? this.createdAt,
      metaHash: metaHash ?? this.metaHash,
      collectionId: collectionId ?? this.collectionId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (tokenId.present) {
      map['token_id'] = Variable<String>(tokenId.value);
    }
    if (group.present) {
      map['group'] = Variable<String>(group.value);
    }
    if (token.present) {
      map['token'] = Variable<String>(token.value);
    }
    if (mixinId.present) {
      map['mixin_id'] = Variable<String>(mixinId.value);
    }
    if (nfo.present) {
      map['nfo'] = Variable<String>(nfo.value);
    }
    if (createdAt.present) {
      final converter = CollectibleToken.$converter0;
      map['created_at'] = Variable<int>(converter.toSql(createdAt.value));
    }
    if (metaHash.present) {
      map['meta_hash'] = Variable<String>(metaHash.value);
    }
    if (collectionId.present) {
      map['collection_id'] = Variable<String>(collectionId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CollectibleTokenCompanion(')
          ..write('type: $type, ')
          ..write('tokenId: $tokenId, ')
          ..write('group: $group, ')
          ..write('token: $token, ')
          ..write('mixinId: $mixinId, ')
          ..write('nfo: $nfo, ')
          ..write('createdAt: $createdAt, ')
          ..write('metaHash: $metaHash, ')
          ..write('collectionId: $collectionId')
          ..write(')'))
        .toString();
  }
}

class CollectibleToken extends Table
    with TableInfo<CollectibleToken, CollectibleTokenData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  CollectibleToken(this.attachedDatabase, [this._alias]);
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _tokenIdMeta = const VerificationMeta('tokenId');
  late final GeneratedColumn<String> tokenId = GeneratedColumn<String>(
      'token_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _groupMeta = const VerificationMeta('group');
  late final GeneratedColumn<String> group = GeneratedColumn<String>(
      'group', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _tokenMeta = const VerificationMeta('token');
  late final GeneratedColumn<String> token = GeneratedColumn<String>(
      'token', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _mixinIdMeta = const VerificationMeta('mixinId');
  late final GeneratedColumn<String> mixinId = GeneratedColumn<String>(
      'mixin_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _nfoMeta = const VerificationMeta('nfo');
  late final GeneratedColumn<String> nfo = GeneratedColumn<String>(
      'nfo', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  late final GeneratedColumnWithTypeConverter<DateTime, int> createdAt =
      GeneratedColumn<int>('created_at', aliasedName, false,
              type: DriftSqlType.int,
              requiredDuringInsert: true,
              $customConstraints: 'NOT NULL')
          .withConverter<DateTime>(CollectibleToken.$converter0);
  final VerificationMeta _metaHashMeta = const VerificationMeta('metaHash');
  late final GeneratedColumn<String> metaHash = GeneratedColumn<String>(
      'meta_hash', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _collectionIdMeta =
      const VerificationMeta('collectionId');
  late final GeneratedColumn<String> collectionId = GeneratedColumn<String>(
      'collection_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns => [
        type,
        tokenId,
        group,
        token,
        mixinId,
        nfo,
        createdAt,
        metaHash,
        collectionId
      ];
  @override
  String get aliasedName => _alias ?? 'collectible_token';
  @override
  String get actualTableName => 'collectible_token';
  @override
  VerificationContext validateIntegrity(
      Insertable<CollectibleTokenData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('token_id')) {
      context.handle(_tokenIdMeta,
          tokenId.isAcceptableOrUnknown(data['token_id']!, _tokenIdMeta));
    } else if (isInserting) {
      context.missing(_tokenIdMeta);
    }
    if (data.containsKey('group')) {
      context.handle(
          _groupMeta, group.isAcceptableOrUnknown(data['group']!, _groupMeta));
    } else if (isInserting) {
      context.missing(_groupMeta);
    }
    if (data.containsKey('token')) {
      context.handle(
          _tokenMeta, token.isAcceptableOrUnknown(data['token']!, _tokenMeta));
    } else if (isInserting) {
      context.missing(_tokenMeta);
    }
    if (data.containsKey('mixin_id')) {
      context.handle(_mixinIdMeta,
          mixinId.isAcceptableOrUnknown(data['mixin_id']!, _mixinIdMeta));
    } else if (isInserting) {
      context.missing(_mixinIdMeta);
    }
    if (data.containsKey('nfo')) {
      context.handle(
          _nfoMeta, nfo.isAcceptableOrUnknown(data['nfo']!, _nfoMeta));
    } else if (isInserting) {
      context.missing(_nfoMeta);
    }
    context.handle(_createdAtMeta, const VerificationResult.success());
    if (data.containsKey('meta_hash')) {
      context.handle(_metaHashMeta,
          metaHash.isAcceptableOrUnknown(data['meta_hash']!, _metaHashMeta));
    } else if (isInserting) {
      context.missing(_metaHashMeta);
    }
    if (data.containsKey('collection_id')) {
      context.handle(
          _collectionIdMeta,
          collectionId.isAcceptableOrUnknown(
              data['collection_id']!, _collectionIdMeta));
    } else if (isInserting) {
      context.missing(_collectionIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {tokenId};
  @override
  CollectibleTokenData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CollectibleTokenData(
      type: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      tokenId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}token_id'])!,
      group: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}group'])!,
      token: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}token'])!,
      mixinId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}mixin_id'])!,
      nfo: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}nfo'])!,
      createdAt: CollectibleToken.$converter0.fromSql(attachedDatabase
          .options.types
          .read(DriftSqlType.int, data['${effectivePrefix}created_at'])!),
      metaHash: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}meta_hash'])!,
      collectionId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}collection_id'])!,
    );
  }

  @override
  CollectibleToken createAlias(String alias) {
    return CollectibleToken(attachedDatabase, alias);
  }

  static TypeConverter<DateTime, int> $converter0 =
      const MillisDateConverterNotnull();
  @override
  List<String> get customConstraints => const ['PRIMARY KEY(token_id)'];
  @override
  bool get dontWriteConstraints => true;
}

class Collection extends DataClass implements Insertable<Collection> {
  final String type;
  final String collectionId;
  final String name;
  final String description;
  final String iconUrl;
  final DateTime createdAt;
  const Collection(
      {required this.type,
      required this.collectionId,
      required this.name,
      required this.description,
      required this.iconUrl,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['type'] = Variable<String>(type);
    map['collection_id'] = Variable<String>(collectionId);
    map['name'] = Variable<String>(name);
    map['description'] = Variable<String>(description);
    map['icon_url'] = Variable<String>(iconUrl);
    {
      final converter = Collections.$converter0;
      map['created_at'] = Variable<int>(converter.toSql(createdAt));
    }
    return map;
  }

  CollectionsCompanion toCompanion(bool nullToAbsent) {
    return CollectionsCompanion(
      type: Value(type),
      collectionId: Value(collectionId),
      name: Value(name),
      description: Value(description),
      iconUrl: Value(iconUrl),
      createdAt: Value(createdAt),
    );
  }

  factory Collection.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Collection(
      type: serializer.fromJson<String>(json['type']),
      collectionId: serializer.fromJson<String>(json['collection_id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      iconUrl: serializer.fromJson<String>(json['icon_url']),
      createdAt: serializer.fromJson<DateTime>(json['created_at']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'type': serializer.toJson<String>(type),
      'collection_id': serializer.toJson<String>(collectionId),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'icon_url': serializer.toJson<String>(iconUrl),
      'created_at': serializer.toJson<DateTime>(createdAt),
    };
  }

  Collection copyWith(
          {String? type,
          String? collectionId,
          String? name,
          String? description,
          String? iconUrl,
          DateTime? createdAt}) =>
      Collection(
        type: type ?? this.type,
        collectionId: collectionId ?? this.collectionId,
        name: name ?? this.name,
        description: description ?? this.description,
        iconUrl: iconUrl ?? this.iconUrl,
        createdAt: createdAt ?? this.createdAt,
      );
  @override
  String toString() {
    return (StringBuffer('Collection(')
          ..write('type: $type, ')
          ..write('collectionId: $collectionId, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('iconUrl: $iconUrl, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(type, collectionId, name, description, iconUrl, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Collection &&
          other.type == this.type &&
          other.collectionId == this.collectionId &&
          other.name == this.name &&
          other.description == this.description &&
          other.iconUrl == this.iconUrl &&
          other.createdAt == this.createdAt);
}

class CollectionsCompanion extends UpdateCompanion<Collection> {
  final Value<String> type;
  final Value<String> collectionId;
  final Value<String> name;
  final Value<String> description;
  final Value<String> iconUrl;
  final Value<DateTime> createdAt;
  const CollectionsCompanion({
    this.type = const Value.absent(),
    this.collectionId = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.iconUrl = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  CollectionsCompanion.insert({
    required String type,
    required String collectionId,
    required String name,
    required String description,
    required String iconUrl,
    required DateTime createdAt,
  })  : type = Value(type),
        collectionId = Value(collectionId),
        name = Value(name),
        description = Value(description),
        iconUrl = Value(iconUrl),
        createdAt = Value(createdAt);
  static Insertable<Collection> custom({
    Expression<String>? type,
    Expression<String>? collectionId,
    Expression<String>? name,
    Expression<String>? description,
    Expression<String>? iconUrl,
    Expression<int>? createdAt,
  }) {
    return RawValuesInsertable({
      if (type != null) 'type': type,
      if (collectionId != null) 'collection_id': collectionId,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (iconUrl != null) 'icon_url': iconUrl,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  CollectionsCompanion copyWith(
      {Value<String>? type,
      Value<String>? collectionId,
      Value<String>? name,
      Value<String>? description,
      Value<String>? iconUrl,
      Value<DateTime>? createdAt}) {
    return CollectionsCompanion(
      type: type ?? this.type,
      collectionId: collectionId ?? this.collectionId,
      name: name ?? this.name,
      description: description ?? this.description,
      iconUrl: iconUrl ?? this.iconUrl,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (collectionId.present) {
      map['collection_id'] = Variable<String>(collectionId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (iconUrl.present) {
      map['icon_url'] = Variable<String>(iconUrl.value);
    }
    if (createdAt.present) {
      final converter = Collections.$converter0;
      map['created_at'] = Variable<int>(converter.toSql(createdAt.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CollectionsCompanion(')
          ..write('type: $type, ')
          ..write('collectionId: $collectionId, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('iconUrl: $iconUrl, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class Collections extends Table with TableInfo<Collections, Collection> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Collections(this.attachedDatabase, [this._alias]);
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _collectionIdMeta =
      const VerificationMeta('collectionId');
  late final GeneratedColumn<String> collectionId = GeneratedColumn<String>(
      'collection_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _iconUrlMeta = const VerificationMeta('iconUrl');
  late final GeneratedColumn<String> iconUrl = GeneratedColumn<String>(
      'icon_url', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  late final GeneratedColumnWithTypeConverter<DateTime, int> createdAt =
      GeneratedColumn<int>('created_at', aliasedName, false,
              type: DriftSqlType.int,
              requiredDuringInsert: true,
              $customConstraints: 'NOT NULL')
          .withConverter<DateTime>(Collections.$converter0);
  @override
  List<GeneratedColumn> get $columns =>
      [type, collectionId, name, description, iconUrl, createdAt];
  @override
  String get aliasedName => _alias ?? 'collections';
  @override
  String get actualTableName => 'collections';
  @override
  VerificationContext validateIntegrity(Insertable<Collection> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('collection_id')) {
      context.handle(
          _collectionIdMeta,
          collectionId.isAcceptableOrUnknown(
              data['collection_id']!, _collectionIdMeta));
    } else if (isInserting) {
      context.missing(_collectionIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('icon_url')) {
      context.handle(_iconUrlMeta,
          iconUrl.isAcceptableOrUnknown(data['icon_url']!, _iconUrlMeta));
    } else if (isInserting) {
      context.missing(_iconUrlMeta);
    }
    context.handle(_createdAtMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {collectionId};
  @override
  Collection map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Collection(
      type: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      collectionId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}collection_id'])!,
      name: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      description: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      iconUrl: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}icon_url'])!,
      createdAt: Collections.$converter0.fromSql(attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}created_at'])!),
    );
  }

  @override
  Collections createAlias(String alias) {
    return Collections(attachedDatabase, alias);
  }

  static TypeConverter<DateTime, int> $converter0 =
      const MillisDateConverterNotnull();
  @override
  List<String> get customConstraints => const ['PRIMARY KEY(collection_id)'];
  @override
  bool get dontWriteConstraints => true;
}

class CollectibleOutputData extends DataClass
    implements Insertable<CollectibleOutputData> {
  final String userId;
  final String outputId;
  final String tokenId;
  final String transactionHash;
  final int outputIndex;
  final String amount;
  final int sendersThreshold;
  final String senders;
  final int receiversThreshold;
  final String receivers;
  final String state;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String signedBy;
  final String signedTx;
  const CollectibleOutputData(
      {required this.userId,
      required this.outputId,
      required this.tokenId,
      required this.transactionHash,
      required this.outputIndex,
      required this.amount,
      required this.sendersThreshold,
      required this.senders,
      required this.receiversThreshold,
      required this.receivers,
      required this.state,
      required this.createdAt,
      required this.updatedAt,
      required this.signedBy,
      required this.signedTx});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_id'] = Variable<String>(userId);
    map['output_id'] = Variable<String>(outputId);
    map['token_id'] = Variable<String>(tokenId);
    map['transaction_hash'] = Variable<String>(transactionHash);
    map['output_index'] = Variable<int>(outputIndex);
    map['amount'] = Variable<String>(amount);
    map['senders_threshold'] = Variable<int>(sendersThreshold);
    map['senders'] = Variable<String>(senders);
    map['receivers_threshold'] = Variable<int>(receiversThreshold);
    map['receivers'] = Variable<String>(receivers);
    map['state'] = Variable<String>(state);
    {
      final converter = CollectibleOutput.$converter0;
      map['created_at'] = Variable<int>(converter.toSql(createdAt));
    }
    {
      final converter = CollectibleOutput.$converter1;
      map['updated_at'] = Variable<int>(converter.toSql(updatedAt));
    }
    map['signed_by'] = Variable<String>(signedBy);
    map['signed_tx'] = Variable<String>(signedTx);
    return map;
  }

  CollectibleOutputCompanion toCompanion(bool nullToAbsent) {
    return CollectibleOutputCompanion(
      userId: Value(userId),
      outputId: Value(outputId),
      tokenId: Value(tokenId),
      transactionHash: Value(transactionHash),
      outputIndex: Value(outputIndex),
      amount: Value(amount),
      sendersThreshold: Value(sendersThreshold),
      senders: Value(senders),
      receiversThreshold: Value(receiversThreshold),
      receivers: Value(receivers),
      state: Value(state),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      signedBy: Value(signedBy),
      signedTx: Value(signedTx),
    );
  }

  factory CollectibleOutputData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CollectibleOutputData(
      userId: serializer.fromJson<String>(json['user_id']),
      outputId: serializer.fromJson<String>(json['output_id']),
      tokenId: serializer.fromJson<String>(json['token_id']),
      transactionHash: serializer.fromJson<String>(json['transaction_hash']),
      outputIndex: serializer.fromJson<int>(json['output_index']),
      amount: serializer.fromJson<String>(json['amount']),
      sendersThreshold: serializer.fromJson<int>(json['senders_threshold']),
      senders: serializer.fromJson<String>(json['senders']),
      receiversThreshold: serializer.fromJson<int>(json['receivers_threshold']),
      receivers: serializer.fromJson<String>(json['receivers']),
      state: serializer.fromJson<String>(json['state']),
      createdAt: serializer.fromJson<DateTime>(json['created_at']),
      updatedAt: serializer.fromJson<DateTime>(json['updated_at']),
      signedBy: serializer.fromJson<String>(json['signed_by']),
      signedTx: serializer.fromJson<String>(json['signed_tx']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'user_id': serializer.toJson<String>(userId),
      'output_id': serializer.toJson<String>(outputId),
      'token_id': serializer.toJson<String>(tokenId),
      'transaction_hash': serializer.toJson<String>(transactionHash),
      'output_index': serializer.toJson<int>(outputIndex),
      'amount': serializer.toJson<String>(amount),
      'senders_threshold': serializer.toJson<int>(sendersThreshold),
      'senders': serializer.toJson<String>(senders),
      'receivers_threshold': serializer.toJson<int>(receiversThreshold),
      'receivers': serializer.toJson<String>(receivers),
      'state': serializer.toJson<String>(state),
      'created_at': serializer.toJson<DateTime>(createdAt),
      'updated_at': serializer.toJson<DateTime>(updatedAt),
      'signed_by': serializer.toJson<String>(signedBy),
      'signed_tx': serializer.toJson<String>(signedTx),
    };
  }

  CollectibleOutputData copyWith(
          {String? userId,
          String? outputId,
          String? tokenId,
          String? transactionHash,
          int? outputIndex,
          String? amount,
          int? sendersThreshold,
          String? senders,
          int? receiversThreshold,
          String? receivers,
          String? state,
          DateTime? createdAt,
          DateTime? updatedAt,
          String? signedBy,
          String? signedTx}) =>
      CollectibleOutputData(
        userId: userId ?? this.userId,
        outputId: outputId ?? this.outputId,
        tokenId: tokenId ?? this.tokenId,
        transactionHash: transactionHash ?? this.transactionHash,
        outputIndex: outputIndex ?? this.outputIndex,
        amount: amount ?? this.amount,
        sendersThreshold: sendersThreshold ?? this.sendersThreshold,
        senders: senders ?? this.senders,
        receiversThreshold: receiversThreshold ?? this.receiversThreshold,
        receivers: receivers ?? this.receivers,
        state: state ?? this.state,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        signedBy: signedBy ?? this.signedBy,
        signedTx: signedTx ?? this.signedTx,
      );
  @override
  String toString() {
    return (StringBuffer('CollectibleOutputData(')
          ..write('userId: $userId, ')
          ..write('outputId: $outputId, ')
          ..write('tokenId: $tokenId, ')
          ..write('transactionHash: $transactionHash, ')
          ..write('outputIndex: $outputIndex, ')
          ..write('amount: $amount, ')
          ..write('sendersThreshold: $sendersThreshold, ')
          ..write('senders: $senders, ')
          ..write('receiversThreshold: $receiversThreshold, ')
          ..write('receivers: $receivers, ')
          ..write('state: $state, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('signedBy: $signedBy, ')
          ..write('signedTx: $signedTx')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      userId,
      outputId,
      tokenId,
      transactionHash,
      outputIndex,
      amount,
      sendersThreshold,
      senders,
      receiversThreshold,
      receivers,
      state,
      createdAt,
      updatedAt,
      signedBy,
      signedTx);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CollectibleOutputData &&
          other.userId == this.userId &&
          other.outputId == this.outputId &&
          other.tokenId == this.tokenId &&
          other.transactionHash == this.transactionHash &&
          other.outputIndex == this.outputIndex &&
          other.amount == this.amount &&
          other.sendersThreshold == this.sendersThreshold &&
          other.senders == this.senders &&
          other.receiversThreshold == this.receiversThreshold &&
          other.receivers == this.receivers &&
          other.state == this.state &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.signedBy == this.signedBy &&
          other.signedTx == this.signedTx);
}

class CollectibleOutputCompanion
    extends UpdateCompanion<CollectibleOutputData> {
  final Value<String> userId;
  final Value<String> outputId;
  final Value<String> tokenId;
  final Value<String> transactionHash;
  final Value<int> outputIndex;
  final Value<String> amount;
  final Value<int> sendersThreshold;
  final Value<String> senders;
  final Value<int> receiversThreshold;
  final Value<String> receivers;
  final Value<String> state;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String> signedBy;
  final Value<String> signedTx;
  const CollectibleOutputCompanion({
    this.userId = const Value.absent(),
    this.outputId = const Value.absent(),
    this.tokenId = const Value.absent(),
    this.transactionHash = const Value.absent(),
    this.outputIndex = const Value.absent(),
    this.amount = const Value.absent(),
    this.sendersThreshold = const Value.absent(),
    this.senders = const Value.absent(),
    this.receiversThreshold = const Value.absent(),
    this.receivers = const Value.absent(),
    this.state = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.signedBy = const Value.absent(),
    this.signedTx = const Value.absent(),
  });
  CollectibleOutputCompanion.insert({
    required String userId,
    required String outputId,
    required String tokenId,
    required String transactionHash,
    required int outputIndex,
    required String amount,
    required int sendersThreshold,
    required String senders,
    required int receiversThreshold,
    required String receivers,
    required String state,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String signedBy,
    required String signedTx,
  })  : userId = Value(userId),
        outputId = Value(outputId),
        tokenId = Value(tokenId),
        transactionHash = Value(transactionHash),
        outputIndex = Value(outputIndex),
        amount = Value(amount),
        sendersThreshold = Value(sendersThreshold),
        senders = Value(senders),
        receiversThreshold = Value(receiversThreshold),
        receivers = Value(receivers),
        state = Value(state),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt),
        signedBy = Value(signedBy),
        signedTx = Value(signedTx);
  static Insertable<CollectibleOutputData> custom({
    Expression<String>? userId,
    Expression<String>? outputId,
    Expression<String>? tokenId,
    Expression<String>? transactionHash,
    Expression<int>? outputIndex,
    Expression<String>? amount,
    Expression<int>? sendersThreshold,
    Expression<String>? senders,
    Expression<int>? receiversThreshold,
    Expression<String>? receivers,
    Expression<String>? state,
    Expression<int>? createdAt,
    Expression<int>? updatedAt,
    Expression<String>? signedBy,
    Expression<String>? signedTx,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (outputId != null) 'output_id': outputId,
      if (tokenId != null) 'token_id': tokenId,
      if (transactionHash != null) 'transaction_hash': transactionHash,
      if (outputIndex != null) 'output_index': outputIndex,
      if (amount != null) 'amount': amount,
      if (sendersThreshold != null) 'senders_threshold': sendersThreshold,
      if (senders != null) 'senders': senders,
      if (receiversThreshold != null) 'receivers_threshold': receiversThreshold,
      if (receivers != null) 'receivers': receivers,
      if (state != null) 'state': state,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (signedBy != null) 'signed_by': signedBy,
      if (signedTx != null) 'signed_tx': signedTx,
    });
  }

  CollectibleOutputCompanion copyWith(
      {Value<String>? userId,
      Value<String>? outputId,
      Value<String>? tokenId,
      Value<String>? transactionHash,
      Value<int>? outputIndex,
      Value<String>? amount,
      Value<int>? sendersThreshold,
      Value<String>? senders,
      Value<int>? receiversThreshold,
      Value<String>? receivers,
      Value<String>? state,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<String>? signedBy,
      Value<String>? signedTx}) {
    return CollectibleOutputCompanion(
      userId: userId ?? this.userId,
      outputId: outputId ?? this.outputId,
      tokenId: tokenId ?? this.tokenId,
      transactionHash: transactionHash ?? this.transactionHash,
      outputIndex: outputIndex ?? this.outputIndex,
      amount: amount ?? this.amount,
      sendersThreshold: sendersThreshold ?? this.sendersThreshold,
      senders: senders ?? this.senders,
      receiversThreshold: receiversThreshold ?? this.receiversThreshold,
      receivers: receivers ?? this.receivers,
      state: state ?? this.state,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      signedBy: signedBy ?? this.signedBy,
      signedTx: signedTx ?? this.signedTx,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (outputId.present) {
      map['output_id'] = Variable<String>(outputId.value);
    }
    if (tokenId.present) {
      map['token_id'] = Variable<String>(tokenId.value);
    }
    if (transactionHash.present) {
      map['transaction_hash'] = Variable<String>(transactionHash.value);
    }
    if (outputIndex.present) {
      map['output_index'] = Variable<int>(outputIndex.value);
    }
    if (amount.present) {
      map['amount'] = Variable<String>(amount.value);
    }
    if (sendersThreshold.present) {
      map['senders_threshold'] = Variable<int>(sendersThreshold.value);
    }
    if (senders.present) {
      map['senders'] = Variable<String>(senders.value);
    }
    if (receiversThreshold.present) {
      map['receivers_threshold'] = Variable<int>(receiversThreshold.value);
    }
    if (receivers.present) {
      map['receivers'] = Variable<String>(receivers.value);
    }
    if (state.present) {
      map['state'] = Variable<String>(state.value);
    }
    if (createdAt.present) {
      final converter = CollectibleOutput.$converter0;
      map['created_at'] = Variable<int>(converter.toSql(createdAt.value));
    }
    if (updatedAt.present) {
      final converter = CollectibleOutput.$converter1;
      map['updated_at'] = Variable<int>(converter.toSql(updatedAt.value));
    }
    if (signedBy.present) {
      map['signed_by'] = Variable<String>(signedBy.value);
    }
    if (signedTx.present) {
      map['signed_tx'] = Variable<String>(signedTx.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CollectibleOutputCompanion(')
          ..write('userId: $userId, ')
          ..write('outputId: $outputId, ')
          ..write('tokenId: $tokenId, ')
          ..write('transactionHash: $transactionHash, ')
          ..write('outputIndex: $outputIndex, ')
          ..write('amount: $amount, ')
          ..write('sendersThreshold: $sendersThreshold, ')
          ..write('senders: $senders, ')
          ..write('receiversThreshold: $receiversThreshold, ')
          ..write('receivers: $receivers, ')
          ..write('state: $state, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('signedBy: $signedBy, ')
          ..write('signedTx: $signedTx')
          ..write(')'))
        .toString();
  }
}

class CollectibleOutput extends Table
    with TableInfo<CollectibleOutput, CollectibleOutputData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  CollectibleOutput(this.attachedDatabase, [this._alias]);
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _outputIdMeta = const VerificationMeta('outputId');
  late final GeneratedColumn<String> outputId = GeneratedColumn<String>(
      'output_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _tokenIdMeta = const VerificationMeta('tokenId');
  late final GeneratedColumn<String> tokenId = GeneratedColumn<String>(
      'token_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _transactionHashMeta =
      const VerificationMeta('transactionHash');
  late final GeneratedColumn<String> transactionHash = GeneratedColumn<String>(
      'transaction_hash', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _outputIndexMeta =
      const VerificationMeta('outputIndex');
  late final GeneratedColumn<int> outputIndex = GeneratedColumn<int>(
      'output_index', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _amountMeta = const VerificationMeta('amount');
  late final GeneratedColumn<String> amount = GeneratedColumn<String>(
      'amount', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _sendersThresholdMeta =
      const VerificationMeta('sendersThreshold');
  late final GeneratedColumn<int> sendersThreshold = GeneratedColumn<int>(
      'senders_threshold', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _sendersMeta = const VerificationMeta('senders');
  late final GeneratedColumn<String> senders = GeneratedColumn<String>(
      'senders', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _receiversThresholdMeta =
      const VerificationMeta('receiversThreshold');
  late final GeneratedColumn<int> receiversThreshold = GeneratedColumn<int>(
      'receivers_threshold', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _receiversMeta = const VerificationMeta('receivers');
  late final GeneratedColumn<String> receivers = GeneratedColumn<String>(
      'receivers', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _stateMeta = const VerificationMeta('state');
  late final GeneratedColumn<String> state = GeneratedColumn<String>(
      'state', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  late final GeneratedColumnWithTypeConverter<DateTime, int> createdAt =
      GeneratedColumn<int>('created_at', aliasedName, false,
              type: DriftSqlType.int,
              requiredDuringInsert: true,
              $customConstraints: 'NOT NULL')
          .withConverter<DateTime>(CollectibleOutput.$converter0);
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  late final GeneratedColumnWithTypeConverter<DateTime, int> updatedAt =
      GeneratedColumn<int>('updated_at', aliasedName, false,
              type: DriftSqlType.int,
              requiredDuringInsert: true,
              $customConstraints: 'NOT NULL')
          .withConverter<DateTime>(CollectibleOutput.$converter1);
  final VerificationMeta _signedByMeta = const VerificationMeta('signedBy');
  late final GeneratedColumn<String> signedBy = GeneratedColumn<String>(
      'signed_by', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _signedTxMeta = const VerificationMeta('signedTx');
  late final GeneratedColumn<String> signedTx = GeneratedColumn<String>(
      'signed_tx', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns => [
        userId,
        outputId,
        tokenId,
        transactionHash,
        outputIndex,
        amount,
        sendersThreshold,
        senders,
        receiversThreshold,
        receivers,
        state,
        createdAt,
        updatedAt,
        signedBy,
        signedTx
      ];
  @override
  String get aliasedName => _alias ?? 'collectible_output';
  @override
  String get actualTableName => 'collectible_output';
  @override
  VerificationContext validateIntegrity(
      Insertable<CollectibleOutputData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('output_id')) {
      context.handle(_outputIdMeta,
          outputId.isAcceptableOrUnknown(data['output_id']!, _outputIdMeta));
    } else if (isInserting) {
      context.missing(_outputIdMeta);
    }
    if (data.containsKey('token_id')) {
      context.handle(_tokenIdMeta,
          tokenId.isAcceptableOrUnknown(data['token_id']!, _tokenIdMeta));
    } else if (isInserting) {
      context.missing(_tokenIdMeta);
    }
    if (data.containsKey('transaction_hash')) {
      context.handle(
          _transactionHashMeta,
          transactionHash.isAcceptableOrUnknown(
              data['transaction_hash']!, _transactionHashMeta));
    } else if (isInserting) {
      context.missing(_transactionHashMeta);
    }
    if (data.containsKey('output_index')) {
      context.handle(
          _outputIndexMeta,
          outputIndex.isAcceptableOrUnknown(
              data['output_index']!, _outputIndexMeta));
    } else if (isInserting) {
      context.missing(_outputIndexMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('senders_threshold')) {
      context.handle(
          _sendersThresholdMeta,
          sendersThreshold.isAcceptableOrUnknown(
              data['senders_threshold']!, _sendersThresholdMeta));
    } else if (isInserting) {
      context.missing(_sendersThresholdMeta);
    }
    if (data.containsKey('senders')) {
      context.handle(_sendersMeta,
          senders.isAcceptableOrUnknown(data['senders']!, _sendersMeta));
    } else if (isInserting) {
      context.missing(_sendersMeta);
    }
    if (data.containsKey('receivers_threshold')) {
      context.handle(
          _receiversThresholdMeta,
          receiversThreshold.isAcceptableOrUnknown(
              data['receivers_threshold']!, _receiversThresholdMeta));
    } else if (isInserting) {
      context.missing(_receiversThresholdMeta);
    }
    if (data.containsKey('receivers')) {
      context.handle(_receiversMeta,
          receivers.isAcceptableOrUnknown(data['receivers']!, _receiversMeta));
    } else if (isInserting) {
      context.missing(_receiversMeta);
    }
    if (data.containsKey('state')) {
      context.handle(
          _stateMeta, state.isAcceptableOrUnknown(data['state']!, _stateMeta));
    } else if (isInserting) {
      context.missing(_stateMeta);
    }
    context.handle(_createdAtMeta, const VerificationResult.success());
    context.handle(_updatedAtMeta, const VerificationResult.success());
    if (data.containsKey('signed_by')) {
      context.handle(_signedByMeta,
          signedBy.isAcceptableOrUnknown(data['signed_by']!, _signedByMeta));
    } else if (isInserting) {
      context.missing(_signedByMeta);
    }
    if (data.containsKey('signed_tx')) {
      context.handle(_signedTxMeta,
          signedTx.isAcceptableOrUnknown(data['signed_tx']!, _signedTxMeta));
    } else if (isInserting) {
      context.missing(_signedTxMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {outputId};
  @override
  CollectibleOutputData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CollectibleOutputData(
      userId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      outputId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}output_id'])!,
      tokenId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}token_id'])!,
      transactionHash: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}transaction_hash'])!,
      outputIndex: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}output_index'])!,
      amount: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}amount'])!,
      sendersThreshold: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}senders_threshold'])!,
      senders: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}senders'])!,
      receiversThreshold: attachedDatabase.options.types.read(
          DriftSqlType.int, data['${effectivePrefix}receivers_threshold'])!,
      receivers: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}receivers'])!,
      state: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}state'])!,
      createdAt: CollectibleOutput.$converter0.fromSql(attachedDatabase
          .options.types
          .read(DriftSqlType.int, data['${effectivePrefix}created_at'])!),
      updatedAt: CollectibleOutput.$converter1.fromSql(attachedDatabase
          .options.types
          .read(DriftSqlType.int, data['${effectivePrefix}updated_at'])!),
      signedBy: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}signed_by'])!,
      signedTx: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}signed_tx'])!,
    );
  }

  @override
  CollectibleOutput createAlias(String alias) {
    return CollectibleOutput(attachedDatabase, alias);
  }

  static TypeConverter<DateTime, int> $converter0 =
      const MillisDateConverterNotnull();
  static TypeConverter<DateTime, int> $converter1 =
      const MillisDateConverterNotnull();
  @override
  List<String> get customConstraints => const ['PRIMARY KEY(output_id)'];
  @override
  bool get dontWriteConstraints => true;
}

class Chain extends DataClass implements Insertable<Chain> {
  final String chainId;
  final String name;
  final String symbol;
  final String iconUrl;
  final int threshold;
  const Chain(
      {required this.chainId,
      required this.name,
      required this.symbol,
      required this.iconUrl,
      required this.threshold});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['chain_id'] = Variable<String>(chainId);
    map['name'] = Variable<String>(name);
    map['symbol'] = Variable<String>(symbol);
    map['icon_url'] = Variable<String>(iconUrl);
    map['threshold'] = Variable<int>(threshold);
    return map;
  }

  ChainsCompanion toCompanion(bool nullToAbsent) {
    return ChainsCompanion(
      chainId: Value(chainId),
      name: Value(name),
      symbol: Value(symbol),
      iconUrl: Value(iconUrl),
      threshold: Value(threshold),
    );
  }

  factory Chain.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Chain(
      chainId: serializer.fromJson<String>(json['chain_id']),
      name: serializer.fromJson<String>(json['name']),
      symbol: serializer.fromJson<String>(json['symbol']),
      iconUrl: serializer.fromJson<String>(json['icon_url']),
      threshold: serializer.fromJson<int>(json['threshold']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'chain_id': serializer.toJson<String>(chainId),
      'name': serializer.toJson<String>(name),
      'symbol': serializer.toJson<String>(symbol),
      'icon_url': serializer.toJson<String>(iconUrl),
      'threshold': serializer.toJson<int>(threshold),
    };
  }

  Chain copyWith(
          {String? chainId,
          String? name,
          String? symbol,
          String? iconUrl,
          int? threshold}) =>
      Chain(
        chainId: chainId ?? this.chainId,
        name: name ?? this.name,
        symbol: symbol ?? this.symbol,
        iconUrl: iconUrl ?? this.iconUrl,
        threshold: threshold ?? this.threshold,
      );
  @override
  String toString() {
    return (StringBuffer('Chain(')
          ..write('chainId: $chainId, ')
          ..write('name: $name, ')
          ..write('symbol: $symbol, ')
          ..write('iconUrl: $iconUrl, ')
          ..write('threshold: $threshold')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(chainId, name, symbol, iconUrl, threshold);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Chain &&
          other.chainId == this.chainId &&
          other.name == this.name &&
          other.symbol == this.symbol &&
          other.iconUrl == this.iconUrl &&
          other.threshold == this.threshold);
}

class ChainsCompanion extends UpdateCompanion<Chain> {
  final Value<String> chainId;
  final Value<String> name;
  final Value<String> symbol;
  final Value<String> iconUrl;
  final Value<int> threshold;
  const ChainsCompanion({
    this.chainId = const Value.absent(),
    this.name = const Value.absent(),
    this.symbol = const Value.absent(),
    this.iconUrl = const Value.absent(),
    this.threshold = const Value.absent(),
  });
  ChainsCompanion.insert({
    required String chainId,
    required String name,
    required String symbol,
    required String iconUrl,
    required int threshold,
  })  : chainId = Value(chainId),
        name = Value(name),
        symbol = Value(symbol),
        iconUrl = Value(iconUrl),
        threshold = Value(threshold);
  static Insertable<Chain> custom({
    Expression<String>? chainId,
    Expression<String>? name,
    Expression<String>? symbol,
    Expression<String>? iconUrl,
    Expression<int>? threshold,
  }) {
    return RawValuesInsertable({
      if (chainId != null) 'chain_id': chainId,
      if (name != null) 'name': name,
      if (symbol != null) 'symbol': symbol,
      if (iconUrl != null) 'icon_url': iconUrl,
      if (threshold != null) 'threshold': threshold,
    });
  }

  ChainsCompanion copyWith(
      {Value<String>? chainId,
      Value<String>? name,
      Value<String>? symbol,
      Value<String>? iconUrl,
      Value<int>? threshold}) {
    return ChainsCompanion(
      chainId: chainId ?? this.chainId,
      name: name ?? this.name,
      symbol: symbol ?? this.symbol,
      iconUrl: iconUrl ?? this.iconUrl,
      threshold: threshold ?? this.threshold,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (chainId.present) {
      map['chain_id'] = Variable<String>(chainId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (iconUrl.present) {
      map['icon_url'] = Variable<String>(iconUrl.value);
    }
    if (threshold.present) {
      map['threshold'] = Variable<int>(threshold.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ChainsCompanion(')
          ..write('chainId: $chainId, ')
          ..write('name: $name, ')
          ..write('symbol: $symbol, ')
          ..write('iconUrl: $iconUrl, ')
          ..write('threshold: $threshold')
          ..write(')'))
        .toString();
  }
}

class Chains extends Table with TableInfo<Chains, Chain> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Chains(this.attachedDatabase, [this._alias]);
  final VerificationMeta _chainIdMeta = const VerificationMeta('chainId');
  late final GeneratedColumn<String> chainId = GeneratedColumn<String>(
      'chain_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  late final GeneratedColumn<String> symbol = GeneratedColumn<String>(
      'symbol', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _iconUrlMeta = const VerificationMeta('iconUrl');
  late final GeneratedColumn<String> iconUrl = GeneratedColumn<String>(
      'icon_url', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _thresholdMeta = const VerificationMeta('threshold');
  late final GeneratedColumn<int> threshold = GeneratedColumn<int>(
      'threshold', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns =>
      [chainId, name, symbol, iconUrl, threshold];
  @override
  String get aliasedName => _alias ?? 'chains';
  @override
  String get actualTableName => 'chains';
  @override
  VerificationContext validateIntegrity(Insertable<Chain> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('chain_id')) {
      context.handle(_chainIdMeta,
          chainId.isAcceptableOrUnknown(data['chain_id']!, _chainIdMeta));
    } else if (isInserting) {
      context.missing(_chainIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('symbol')) {
      context.handle(_symbolMeta,
          symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta));
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('icon_url')) {
      context.handle(_iconUrlMeta,
          iconUrl.isAcceptableOrUnknown(data['icon_url']!, _iconUrlMeta));
    } else if (isInserting) {
      context.missing(_iconUrlMeta);
    }
    if (data.containsKey('threshold')) {
      context.handle(_thresholdMeta,
          threshold.isAcceptableOrUnknown(data['threshold']!, _thresholdMeta));
    } else if (isInserting) {
      context.missing(_thresholdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {chainId};
  @override
  Chain map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Chain(
      chainId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}chain_id'])!,
      name: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      symbol: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}symbol'])!,
      iconUrl: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}icon_url'])!,
      threshold: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}threshold'])!,
    );
  }

  @override
  Chains createAlias(String alias) {
    return Chains(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const ['PRIMARY KEY(chain_id)'];
  @override
  bool get dontWriteConstraints => true;
}

abstract class _$MixinDatabase extends GeneratedDatabase {
  _$MixinDatabase(QueryExecutor e) : super(e);
  _$MixinDatabase.connect(DatabaseConnection c) : super.connect(c);
  late final Addresses addresses = Addresses(this);
  late final Assets assets = Assets(this);
  late final Snapshots snapshots = Snapshots(this);
  late final Users users = Users(this);
  late final Fiats fiats = Fiats(this);
  late final AssetsExtra assetsExtra = AssetsExtra(this);
  late final CollectibleTokenMeta collectibleTokenMeta =
      CollectibleTokenMeta(this);
  late final CollectibleToken collectibleToken = CollectibleToken(this);
  late final Collections collections = Collections(this);
  late final CollectibleOutput collectibleOutput = CollectibleOutput(this);
  late final Chains chains = Chains(this);
  late final AddressDao addressDao = AddressDao(this as MixinDatabase);
  late final AssetDao assetDao = AssetDao(this as MixinDatabase);
  late final SnapshotDao snapshotDao = SnapshotDao(this as MixinDatabase);
  late final UserDao userDao = UserDao(this as MixinDatabase);
  late final FiatDao fiatDao = FiatDao(this as MixinDatabase);
  late final AssetsExtraDao assetsExtraDao =
      AssetsExtraDao(this as MixinDatabase);
  late final CollectibleDao collectibleDao =
      CollectibleDao(this as MixinDatabase);
  late final ChainDao chainDao = ChainDao(this as MixinDatabase);
  Selectable<CollectibleItem> collectiblesResult(CollectiblesResult$where where,
      CollectiblesResult$orderBy orderBy, CollectiblesResult$limit limit) {
    var $arrayStartIndex = 1;
    final generatedwhere = $write(
        where(
            alias(this.collectibleToken, 'token'),
            alias(this.collectibleTokenMeta, 'meta'),
            alias(this.collections, 'c')),
        hasMultipleTables: true,
        startIndex: $arrayStartIndex);
    $arrayStartIndex += generatedwhere.amountOfVariables;
    final generatedorderBy = $write(
        orderBy?.call(
                alias(this.collectibleToken, 'token'),
                alias(this.collectibleTokenMeta, 'meta'),
                alias(this.collections, 'c')) ??
            const OrderBy.nothing(),
        hasMultipleTables: true,
        startIndex: $arrayStartIndex);
    $arrayStartIndex += generatedorderBy.amountOfVariables;
    final generatedlimit = $write(
        limit(
            alias(this.collectibleToken, 'token'),
            alias(this.collectibleTokenMeta, 'meta'),
            alias(this.collections, 'c')),
        hasMultipleTables: true,
        startIndex: $arrayStartIndex);
    $arrayStartIndex += generatedlimit.amountOfVariables;
    return customSelect(
        'SELECT token.*, meta.*, c.type AS collection_type, c.name AS collection_name, c.description AS collection_description, c.icon_url AS collection_icon_url, c.created_at AS collection_created_at FROM collectible_token AS token LEFT JOIN collectible_token_meta AS meta ON token.token_id = meta.token_id LEFT JOIN collections AS c ON token.collection_id = c.collection_id WHERE ${generatedwhere.sql} ${generatedorderBy.sql} ${generatedlimit.sql}',
        variables: [
          ...generatedwhere.introducedVariables,
          ...generatedorderBy.introducedVariables,
          ...generatedlimit.introducedVariables
        ],
        readsFrom: {
          collections,
          collectibleToken,
          collectibleTokenMeta,
          ...generatedwhere.watchedTables,
          ...generatedorderBy.watchedTables,
          ...generatedlimit.watchedTables,
        }).map((QueryRow row) {
      return CollectibleItem(
        type: row.read<String>('type'),
        tokenId: row.read<String>('token_id'),
        group: row.read<String>('group'),
        token: row.read<String>('token'),
        mixinId: row.read<String>('mixin_id'),
        nfo: row.read<String>('nfo'),
        createdAt:
            CollectibleToken.$converter0.fromSql(row.read<int>('created_at')),
        metaHash: row.read<String>('meta_hash'),
        collectionId: row.read<String>('collection_id'),
        group1: row.readNullable<String>('group'),
        name: row.readNullable<String>('name'),
        description: row.readNullable<String>('description'),
        iconUrl: row.readNullable<String>('icon_url'),
        mediaUrl: row.readNullable<String>('media_url'),
        mime: row.readNullable<String>('mime'),
        hash: row.readNullable<String>('hash'),
        tokenId1: row.readNullable<String>('token_id'),
        collectionType: row.readNullable<String>('collection_type'),
        collectionName: row.readNullable<String>('collection_name'),
        collectionDescription:
            row.readNullable<String>('collection_description'),
        collectionIconUrl: row.readNullable<String>('collection_icon_url'),
        collectionCreatedAt: NullAwareTypeConverter.wrapFromSql(
            Collections.$converter0,
            row.readNullable<int>('collection_created_at')),
      );
    });
  }

  Selectable<User> findFriendsNotBot() {
    return customSelect(
        'SELECT * FROM users WHERE relationship = \'FRIEND\' AND app_id IS NULL ORDER BY full_name, identity_number ASC',
        variables: [],
        readsFrom: {
          users,
        }).asyncMap(users.mapFromRow);
  }

  Selectable<SnapshotItem> snapshotItems(SnapshotItems$where where,
      SnapshotItems$order order, SnapshotItems$limit limit) {
    var $arrayStartIndex = 1;
    final generatedwhere = $write(
        where(alias(this.snapshots, 's'), alias(this.users, 'u'),
            alias(this.assets, 'a')),
        hasMultipleTables: true,
        startIndex: $arrayStartIndex);
    $arrayStartIndex += generatedwhere.amountOfVariables;
    final generatedorder = $write(
        order?.call(alias(this.snapshots, 's'), alias(this.users, 'u'),
                alias(this.assets, 'a')) ??
            const OrderBy.nothing(),
        hasMultipleTables: true,
        startIndex: $arrayStartIndex);
    $arrayStartIndex += generatedorder.amountOfVariables;
    final generatedlimit = $write(
        limit(alias(this.snapshots, 's'), alias(this.users, 'u'),
            alias(this.assets, 'a')),
        hasMultipleTables: true,
        startIndex: $arrayStartIndex);
    $arrayStartIndex += generatedlimit.amountOfVariables;
    return customSelect(
        'SELECT s.*, u.avatar_url, u.full_name AS opponent_ful_name, a.symbol AS asset_symbol, a.confirmations AS asset_confirmations FROM snapshots AS s LEFT JOIN users AS u ON u.user_id = s.opponent_id LEFT JOIN assets AS a ON a.asset_id = s.asset_id WHERE ${generatedwhere.sql} ${generatedorder.sql} ${generatedlimit.sql}',
        variables: [
          ...generatedwhere.introducedVariables,
          ...generatedorder.introducedVariables,
          ...generatedlimit.introducedVariables
        ],
        readsFrom: {
          users,
          assets,
          snapshots,
          ...generatedwhere.watchedTables,
          ...generatedorder.watchedTables,
          ...generatedlimit.watchedTables,
        }).map((QueryRow row) {
      return SnapshotItem(
        snapshotId: row.read<String>('snapshot_id'),
        type: row.read<String>('type'),
        assetId: row.read<String>('asset_id'),
        amount: row.read<String>('amount'),
        createdAt: Snapshots.$converter0.fromSql(row.read<int>('created_at')),
        opponentId: row.readNullable<String>('opponent_id'),
        traceId: row.readNullable<String>('trace_id'),
        transactionHash: row.readNullable<String>('transaction_hash'),
        sender: row.readNullable<String>('sender'),
        receiver: row.readNullable<String>('receiver'),
        memo: row.readNullable<String>('memo'),
        confirmations: row.readNullable<int>('confirmations'),
        snapshotHash: row.readNullable<String>('snapshot_hash'),
        snapshotAt:
            Snapshots.$converter1.fromSql(row.readNullable<int>('snapshot_at')),
        state: row.readNullable<String>('state'),
        avatarUrl: row.readNullable<String>('avatar_url'),
        opponentFulName: row.readNullable<String>('opponent_ful_name'),
        assetSymbol: row.readNullable<String>('asset_symbol'),
        assetConfirmations: row.readNullable<int>('asset_confirmations'),
      );
    });
  }

  Future<int> clearPendingDepositsBy(ClearPendingDepositsBy$where where) {
    var $arrayStartIndex = 1;
    final generatedwhere =
        $write(where(this.snapshots), startIndex: $arrayStartIndex);
    $arrayStartIndex += generatedwhere.amountOfVariables;
    return customUpdate(
      'DELETE FROM snapshots WHERE type = \'pending\' AND ${generatedwhere.sql}',
      variables: [...generatedwhere.introducedVariables],
      updates: {snapshots},
      updateKind: UpdateKind.delete,
    );
  }

  Selectable<AssetResult> assetResults(
      String currentFiat,
      AssetResults$where where,
      AssetResults$orderBy orderBy,
      AssetResults$limit limit) {
    var $arrayStartIndex = 2;
    final generatedwhere = $write(
        where(
            alias(this.assets, 'asset'),
            alias(this.assets, 'tempAsset'),
            alias(this.chains, 'c'),
            alias(this.assetsExtra, 'ae'),
            alias(this.fiats, 'fiat')),
        hasMultipleTables: true,
        startIndex: $arrayStartIndex);
    $arrayStartIndex += generatedwhere.amountOfVariables;
    final generatedorderBy = $write(
        orderBy?.call(
                alias(this.assets, 'asset'),
                alias(this.assets, 'tempAsset'),
                alias(this.chains, 'c'),
                alias(this.assetsExtra, 'ae'),
                alias(this.fiats, 'fiat')) ??
            const OrderBy.nothing(),
        hasMultipleTables: true,
        startIndex: $arrayStartIndex);
    $arrayStartIndex += generatedorderBy.amountOfVariables;
    final generatedlimit = $write(
        limit(
            alias(this.assets, 'asset'),
            alias(this.assets, 'tempAsset'),
            alias(this.chains, 'c'),
            alias(this.assetsExtra, 'ae'),
            alias(this.fiats, 'fiat')),
        hasMultipleTables: true,
        startIndex: $arrayStartIndex);
    $arrayStartIndex += generatedlimit.amountOfVariables;
    return customSelect(
        'SELECT asset.*, c.symbol AS chainSymbol, c.icon_url AS chainIconUrl, c.name AS chainName, tempAsset.price_usd AS chainPriceUsd, fiat.rate AS fiatRate, ae.hidden FROM assets AS asset LEFT JOIN assets AS tempAsset ON asset.chain_id = tempAsset.asset_id LEFT JOIN chains AS c ON asset.chain_id = c.chain_id LEFT JOIN assets_extra AS ae ON ae.asset_id = asset.asset_id INNER JOIN fiats AS fiat ON fiat.code = ?1 WHERE ${generatedwhere.sql} ${generatedorderBy.sql} ${generatedlimit.sql}',
        variables: [
          Variable<String>(currentFiat),
          ...generatedwhere.introducedVariables,
          ...generatedorderBy.introducedVariables,
          ...generatedlimit.introducedVariables
        ],
        readsFrom: {
          chains,
          assets,
          fiats,
          assetsExtra,
          ...generatedwhere.watchedTables,
          ...generatedorderBy.watchedTables,
          ...generatedlimit.watchedTables,
        }).map((QueryRow row) {
      return AssetResult(
        assetId: row.read<String>('asset_id'),
        symbol: row.read<String>('symbol'),
        name: row.read<String>('name'),
        iconUrl: row.read<String>('icon_url'),
        balance: row.read<String>('balance'),
        destination: row.readNullable<String>('destination'),
        tag: row.readNullable<String>('tag'),
        priceBtc: row.read<String>('price_btc'),
        priceUsd: row.read<String>('price_usd'),
        chainId: row.read<String>('chain_id'),
        changeUsd: row.read<String>('change_usd'),
        changeBtc: row.read<String>('change_btc'),
        confirmations: row.read<int>('confirmations'),
        assetKey: row.readNullable<String>('asset_key'),
        reserve: row.readNullable<String>('reserve'),
        depositEntries: row.readNullable<String>('deposit_entries'),
        chainSymbol: row.readNullable<String>('chainSymbol'),
        chainIconUrl: row.readNullable<String>('chainIconUrl'),
        chainName: row.readNullable<String>('chainName'),
        chainPriceUsd: row.readNullable<String>('chainPriceUsd'),
        fiatRate: row.read<double>('fiatRate'),
        hidden: row.readNullable<bool>('hidden'),
      );
    });
  }

  Selectable<String> findAssetIdByAssetKey(String assetKey) {
    return customSelect(
        'SELECT asset_id FROM assets WHERE asset_key = ?1 COLLATE NOCASE',
        variables: [
          Variable<String>(assetKey)
        ],
        readsFrom: {
          assets,
        }).map((QueryRow row) => row.read<String>('asset_id'));
  }

  @override
  Iterable<TableInfo<Table, dynamic>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        addresses,
        assets,
        snapshots,
        users,
        fiats,
        assetsExtra,
        collectibleTokenMeta,
        collectibleToken,
        collections,
        collectibleOutput,
        chains
      ];
}

class CollectibleItem {
  final String type;
  final String tokenId;
  final String group;
  final String token;
  final String mixinId;
  final String nfo;
  final DateTime createdAt;
  final String metaHash;
  final String collectionId;
  final String? group1;
  final String? name;
  final String? description;
  final String? iconUrl;
  final String? mediaUrl;
  final String? mime;
  final String? hash;
  final String? tokenId1;
  final String? collectionType;
  final String? collectionName;
  final String? collectionDescription;
  final String? collectionIconUrl;
  final DateTime? collectionCreatedAt;
  CollectibleItem({
    required this.type,
    required this.tokenId,
    required this.group,
    required this.token,
    required this.mixinId,
    required this.nfo,
    required this.createdAt,
    required this.metaHash,
    required this.collectionId,
    this.group1,
    this.name,
    this.description,
    this.iconUrl,
    this.mediaUrl,
    this.mime,
    this.hash,
    this.tokenId1,
    this.collectionType,
    this.collectionName,
    this.collectionDescription,
    this.collectionIconUrl,
    this.collectionCreatedAt,
  });
  @override
  int get hashCode => Object.hashAll([
        type,
        tokenId,
        group,
        token,
        mixinId,
        nfo,
        createdAt,
        metaHash,
        collectionId,
        group1,
        name,
        description,
        iconUrl,
        mediaUrl,
        mime,
        hash,
        tokenId1,
        collectionType,
        collectionName,
        collectionDescription,
        collectionIconUrl,
        collectionCreatedAt
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CollectibleItem &&
          other.type == this.type &&
          other.tokenId == this.tokenId &&
          other.group == this.group &&
          other.token == this.token &&
          other.mixinId == this.mixinId &&
          other.nfo == this.nfo &&
          other.createdAt == this.createdAt &&
          other.metaHash == this.metaHash &&
          other.collectionId == this.collectionId &&
          other.group1 == this.group1 &&
          other.name == this.name &&
          other.description == this.description &&
          other.iconUrl == this.iconUrl &&
          other.mediaUrl == this.mediaUrl &&
          other.mime == this.mime &&
          other.hash == this.hash &&
          other.tokenId1 == this.tokenId1 &&
          other.collectionType == this.collectionType &&
          other.collectionName == this.collectionName &&
          other.collectionDescription == this.collectionDescription &&
          other.collectionIconUrl == this.collectionIconUrl &&
          other.collectionCreatedAt == this.collectionCreatedAt);
  @override
  String toString() {
    return (StringBuffer('CollectibleItem(')
          ..write('type: $type, ')
          ..write('tokenId: $tokenId, ')
          ..write('group: $group, ')
          ..write('token: $token, ')
          ..write('mixinId: $mixinId, ')
          ..write('nfo: $nfo, ')
          ..write('createdAt: $createdAt, ')
          ..write('metaHash: $metaHash, ')
          ..write('collectionId: $collectionId, ')
          ..write('group1: $group1, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('iconUrl: $iconUrl, ')
          ..write('mediaUrl: $mediaUrl, ')
          ..write('mime: $mime, ')
          ..write('hash: $hash, ')
          ..write('tokenId1: $tokenId1, ')
          ..write('collectionType: $collectionType, ')
          ..write('collectionName: $collectionName, ')
          ..write('collectionDescription: $collectionDescription, ')
          ..write('collectionIconUrl: $collectionIconUrl, ')
          ..write('collectionCreatedAt: $collectionCreatedAt')
          ..write(')'))
        .toString();
  }
}

typedef CollectiblesResult$where = Expression<bool> Function(
    CollectibleToken token, CollectibleTokenMeta meta, Collections c);
typedef CollectiblesResult$orderBy = OrderBy Function(
    CollectibleToken token, CollectibleTokenMeta meta, Collections c);
typedef CollectiblesResult$limit = Limit Function(
    CollectibleToken token, CollectibleTokenMeta meta, Collections c);

class SnapshotItem {
  final String snapshotId;
  final String type;
  final String assetId;
  final String amount;
  final DateTime createdAt;
  final String? opponentId;
  final String? traceId;
  final String? transactionHash;
  final String? sender;
  final String? receiver;
  final String? memo;
  final int? confirmations;
  final String? snapshotHash;
  final DateTime? snapshotAt;
  final String? state;
  final String? avatarUrl;
  final String? opponentFulName;
  final String? assetSymbol;
  final int? assetConfirmations;
  SnapshotItem({
    required this.snapshotId,
    required this.type,
    required this.assetId,
    required this.amount,
    required this.createdAt,
    this.opponentId,
    this.traceId,
    this.transactionHash,
    this.sender,
    this.receiver,
    this.memo,
    this.confirmations,
    this.snapshotHash,
    this.snapshotAt,
    this.state,
    this.avatarUrl,
    this.opponentFulName,
    this.assetSymbol,
    this.assetConfirmations,
  });
  @override
  int get hashCode => Object.hash(
      snapshotId,
      type,
      assetId,
      amount,
      createdAt,
      opponentId,
      traceId,
      transactionHash,
      sender,
      receiver,
      memo,
      confirmations,
      snapshotHash,
      snapshotAt,
      state,
      avatarUrl,
      opponentFulName,
      assetSymbol,
      assetConfirmations);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SnapshotItem &&
          other.snapshotId == this.snapshotId &&
          other.type == this.type &&
          other.assetId == this.assetId &&
          other.amount == this.amount &&
          other.createdAt == this.createdAt &&
          other.opponentId == this.opponentId &&
          other.traceId == this.traceId &&
          other.transactionHash == this.transactionHash &&
          other.sender == this.sender &&
          other.receiver == this.receiver &&
          other.memo == this.memo &&
          other.confirmations == this.confirmations &&
          other.snapshotHash == this.snapshotHash &&
          other.snapshotAt == this.snapshotAt &&
          other.state == this.state &&
          other.avatarUrl == this.avatarUrl &&
          other.opponentFulName == this.opponentFulName &&
          other.assetSymbol == this.assetSymbol &&
          other.assetConfirmations == this.assetConfirmations);
  @override
  String toString() {
    return (StringBuffer('SnapshotItem(')
          ..write('snapshotId: $snapshotId, ')
          ..write('type: $type, ')
          ..write('assetId: $assetId, ')
          ..write('amount: $amount, ')
          ..write('createdAt: $createdAt, ')
          ..write('opponentId: $opponentId, ')
          ..write('traceId: $traceId, ')
          ..write('transactionHash: $transactionHash, ')
          ..write('sender: $sender, ')
          ..write('receiver: $receiver, ')
          ..write('memo: $memo, ')
          ..write('confirmations: $confirmations, ')
          ..write('snapshotHash: $snapshotHash, ')
          ..write('snapshotAt: $snapshotAt, ')
          ..write('state: $state, ')
          ..write('avatarUrl: $avatarUrl, ')
          ..write('opponentFulName: $opponentFulName, ')
          ..write('assetSymbol: $assetSymbol, ')
          ..write('assetConfirmations: $assetConfirmations')
          ..write(')'))
        .toString();
  }
}

typedef SnapshotItems$where = Expression<bool> Function(
    Snapshots s, Users u, Assets a);
typedef SnapshotItems$order = OrderBy Function(Snapshots s, Users u, Assets a);
typedef SnapshotItems$limit = Limit Function(Snapshots s, Users u, Assets a);
typedef ClearPendingDepositsBy$where = Expression<bool> Function(
    Snapshots snapshots);

class AssetResult {
  final String assetId;
  final String symbol;
  final String name;
  final String iconUrl;
  final String balance;
  final String? destination;
  final String? tag;
  final String priceBtc;
  final String priceUsd;
  final String chainId;
  final String changeUsd;
  final String changeBtc;
  final int confirmations;
  final String? assetKey;
  final String? reserve;
  final String? depositEntries;
  final String? chainSymbol;
  final String? chainIconUrl;
  final String? chainName;
  final String? chainPriceUsd;
  final double fiatRate;
  final bool? hidden;
  AssetResult({
    required this.assetId,
    required this.symbol,
    required this.name,
    required this.iconUrl,
    required this.balance,
    this.destination,
    this.tag,
    required this.priceBtc,
    required this.priceUsd,
    required this.chainId,
    required this.changeUsd,
    required this.changeBtc,
    required this.confirmations,
    this.assetKey,
    this.reserve,
    this.depositEntries,
    this.chainSymbol,
    this.chainIconUrl,
    this.chainName,
    this.chainPriceUsd,
    required this.fiatRate,
    this.hidden,
  });
  @override
  int get hashCode => Object.hashAll([
        assetId,
        symbol,
        name,
        iconUrl,
        balance,
        destination,
        tag,
        priceBtc,
        priceUsd,
        chainId,
        changeUsd,
        changeBtc,
        confirmations,
        assetKey,
        reserve,
        depositEntries,
        chainSymbol,
        chainIconUrl,
        chainName,
        chainPriceUsd,
        fiatRate,
        hidden
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AssetResult &&
          other.assetId == this.assetId &&
          other.symbol == this.symbol &&
          other.name == this.name &&
          other.iconUrl == this.iconUrl &&
          other.balance == this.balance &&
          other.destination == this.destination &&
          other.tag == this.tag &&
          other.priceBtc == this.priceBtc &&
          other.priceUsd == this.priceUsd &&
          other.chainId == this.chainId &&
          other.changeUsd == this.changeUsd &&
          other.changeBtc == this.changeBtc &&
          other.confirmations == this.confirmations &&
          other.assetKey == this.assetKey &&
          other.reserve == this.reserve &&
          other.depositEntries == this.depositEntries &&
          other.chainSymbol == this.chainSymbol &&
          other.chainIconUrl == this.chainIconUrl &&
          other.chainName == this.chainName &&
          other.chainPriceUsd == this.chainPriceUsd &&
          other.fiatRate == this.fiatRate &&
          other.hidden == this.hidden);
  @override
  String toString() {
    return (StringBuffer('AssetResult(')
          ..write('assetId: $assetId, ')
          ..write('symbol: $symbol, ')
          ..write('name: $name, ')
          ..write('iconUrl: $iconUrl, ')
          ..write('balance: $balance, ')
          ..write('destination: $destination, ')
          ..write('tag: $tag, ')
          ..write('priceBtc: $priceBtc, ')
          ..write('priceUsd: $priceUsd, ')
          ..write('chainId: $chainId, ')
          ..write('changeUsd: $changeUsd, ')
          ..write('changeBtc: $changeBtc, ')
          ..write('confirmations: $confirmations, ')
          ..write('assetKey: $assetKey, ')
          ..write('reserve: $reserve, ')
          ..write('depositEntries: $depositEntries, ')
          ..write('chainSymbol: $chainSymbol, ')
          ..write('chainIconUrl: $chainIconUrl, ')
          ..write('chainName: $chainName, ')
          ..write('chainPriceUsd: $chainPriceUsd, ')
          ..write('fiatRate: $fiatRate, ')
          ..write('hidden: $hidden')
          ..write(')'))
        .toString();
  }
}

typedef AssetResults$where = Expression<bool> Function(
    Assets asset, Assets tempAsset, Chains c, AssetsExtra ae, Fiats fiat);
typedef AssetResults$orderBy = OrderBy Function(
    Assets asset, Assets tempAsset, Chains c, AssetsExtra ae, Fiats fiat);
typedef AssetResults$limit = Limit Function(
    Assets asset, Assets tempAsset, Chains c, AssetsExtra ae, Fiats fiat);
