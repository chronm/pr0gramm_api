import 'package:json_annotation/json_annotation.dart';

part 'logout.g.dart';

@JsonSerializable(explicitToJson: true)
class Logout {
  bool success;

  Logout({this.success});

  factory Logout.fromJson(Map<String, dynamic> json) => _$LogoutFromJson(json);

  Map<String, dynamic> toJson() => _$LogoutToJson(this);
}
