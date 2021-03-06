import 'package:json_annotation/json_annotation.dart';

part 'captcha.g.dart';

@JsonSerializable(explicitToJson: true)
class Captcha {
  String token;
  String captcha;

  Captcha({
    this.token,
    this.captcha,
  });

  factory Captcha.fromJson(Map<String, dynamic> json) => _$CaptchaFromJson(json);

  Map<String, dynamic> toJson() => _$CaptchaToJson(this);
}
