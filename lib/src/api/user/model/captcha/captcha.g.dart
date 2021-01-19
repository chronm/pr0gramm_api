// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'captcha.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Captcha _$CaptchaFromJson(Map<String, dynamic> json) {
  return Captcha(
    token: json['token'] as String,
    captcha: json['captcha'] as String,
  );
}

Map<String, dynamic> _$CaptchaToJson(Captcha instance) => <String, dynamic>{
      'token': instance.token,
      'captcha': instance.captcha,
    };
