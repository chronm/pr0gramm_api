// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Scheduled _$ScheduledFromJson(Map<String, dynamic> json) {
  return Scheduled(
    comment: json['comment'] as String,
    created: const DateTimeConverter().fromJson(json['created'] as int),
    id: json['id'] as int,
    scheduled: const DateTimeConverter().fromJson(json['scheduled'] as int),
    tags: (json['tags'] as List)?.map((e) => e as String)?.toList(),
    thumb: json['thumb'] as String,
  );
}

Map<String, dynamic> _$ScheduledToJson(Scheduled instance) => <String, dynamic>{
      'comment': instance.comment,
      'created': const DateTimeConverter().toJson(instance.created),
      'id': instance.id,
      'scheduled': const DateTimeConverter().toJson(instance.scheduled),
      'tags': instance.tags,
      'thumb': instance.thumb,
    };

ScheduledWrapper _$ScheduledWrapperFromJson(Map<String, dynamic> json) {
  return ScheduledWrapper(
    items: (json['items'] as List)?.map((e) => e == null ? null : Scheduled.fromJson(e as Map<String, dynamic>))?.toList(),
  );
}

Map<String, dynamic> _$ScheduledWrapperToJson(ScheduledWrapper instance) => <String, dynamic>{
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
    };
