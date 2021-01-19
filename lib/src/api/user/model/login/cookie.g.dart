// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cookie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cookie _$CookieFromJson(Map<String, dynamic> json) {
  return Cookie(
    name: json['n'] as String,
    a: json['a'] as int,
    pp: json['pp'] as String,
    paid: json['paid'] as bool,
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$CookieToJson(Cookie instance) => <String, dynamic>{
      'n': instance.name,
      'a': instance.a,
      'pp': instance.pp,
      'paid': instance.paid,
      'id': instance.id,
    };
