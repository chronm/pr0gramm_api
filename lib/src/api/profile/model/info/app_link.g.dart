// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppLink _$AppLinkFromJson(Map<String, dynamic> json) {
  return AppLink(
    text: json['text'] as String,
    icon: json['icon'] as String,
    link: json['link'] as String,
  );
}

Map<String, dynamic> _$AppLinkToJson(AppLink instance) => <String, dynamic>{
      'text': instance.text,
      'icon': instance.icon,
      'link': instance.link,
    };
