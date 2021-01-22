// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sync _$SyncFromJson(Map<String, dynamic> json) {
  return Sync(
    inbox: json['inbox'] == null ? null : Inbox.fromJson(json['inbox'] as Map<String, dynamic>),
    log: json['log'] as String,
    logLength: json['logLength'] as int,
  );
}

Map<String, dynamic> _$SyncToJson(Sync instance) => <String, dynamic>{
      'inbox': instance.inbox?.toJson(),
      'logLength': instance.logLength,
      'log': instance.log,
    };

ItemInCollection _$ItemInCollectionFromJson(Map<String, dynamic> json) {
  return ItemInCollection(
    json['collectionId'] as int,
    json['collect'] as bool,
  );
}

Map<String, dynamic> _$ItemInCollectionToJson(ItemInCollection instance) => <String, dynamic>{
      'collectionId': instance.collectionId,
      'collect': instance.collect,
    };

Voted _$VotedFromJson(Map<String, dynamic> json) {
  return Voted(
    vote: _$enumDecodeNullable(_$VoteEnumMap, json['vote']),
    target: _$enumDecodeNullable(_$VoteTargetEnumMap, json['target']),
  );
}

Map<String, dynamic> _$VotedToJson(Voted instance) => <String, dynamic>{
      'vote': _$VoteEnumMap[instance.vote],
      'target': _$VoteTargetEnumMap[instance.target],
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries.singleWhere((e) => e.value == source, orElse: () => null)?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$VoteEnumMap = {
  Vote.DOWN: 'DOWN',
  Vote.NEUTRAL: 'NEUTRAL',
  Vote.UP: 'UP',
};

const _$VoteTargetEnumMap = {
  VoteTarget.ITEM: 'ITEM',
  VoteTarget.COMMENT: 'COMMENT',
  VoteTarget.TAG: 'TAG',
};
