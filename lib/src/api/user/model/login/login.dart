import 'package:json_annotation/json_annotation.dart';

import '../../../../../pr0gramm_api.dart';

part 'login.g.dart';

@JsonSerializable(explicitToJson: true)
class Login {
  String error;
  bool success;
  String identifier;
  BanInfo ban;
  @JsonKey(ignore: true)
  Cookie cookie;

  Login({
    this.error,
    this.success,
    this.identifier,
    this.ban,
  });

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);

  Map<String, dynamic> toJson() => _$LoginToJson(this);

  String get id => cookie.id;

  String get nonce => id.substring(0, 15);

  bool get paid => cookie.paid;

  String get name => cookie.name;
}
