// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posted.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Posted _$PostedFromJson(Map<String, dynamic> json) {
  return Posted(
    queueId: json['queueId'] as String,
    scheduled: json['scheduled'] as bool,
  );
}

Map<String, dynamic> _$PostedToJson(Posted instance) => <String, dynamic>{
      'queueId': instance.queueId,
      'scheduled': instance.scheduled,
    };
