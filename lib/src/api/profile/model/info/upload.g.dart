// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Upload _$UploadFromJson(Map<String, dynamic> json) {
  return Upload(
    id: json['id'] as int,
    thumb: json['thumb'] as String,
  );
}

Map<String, dynamic> _$UploadToJson(Upload instance) => <String, dynamic>{
      'id': instance.id,
      'thumb': instance.thumb,
    };
