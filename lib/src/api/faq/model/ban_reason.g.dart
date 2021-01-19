// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ban_reason.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BanReason _$BanReasonFromJson(Map<String, dynamic> json) {
  return BanReason(
    banReason: json['banReason'] as String,
    number: (json['number'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$BanReasonToJson(BanReason instance) => <String, dynamic>{
      'banReason': instance.banReason,
      'number': instance.number,
    };

BanReasonWrapper _$BanReasonWrapperFromJson(Map<String, dynamic> json) {
  return BanReasonWrapper(
    rules: (json['rules'] as List)?.map((e) => e == null ? null : BanReason.fromJson(e as Map<String, dynamic>))?.toList(),
  );
}

Map<String, dynamic> _$BanReasonWrapperToJson(BanReasonWrapper instance) => <String, dynamic>{
      'rules': instance.rules,
    };
