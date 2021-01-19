import 'package:json_annotation/json_annotation.dart';

part 'cookie.g.dart';

@JsonSerializable()
class Cookie {
  @JsonKey(name: 'n')
  String name;
  int a;
  String pp;
  bool paid;
  String id;

  Cookie({
    this.name,
    this.a,
    this.pp,
    this.paid,
    this.id,
  });

  factory Cookie.fromJson(Map<String, dynamic> json) => _$CookieFromJson(json);
}
