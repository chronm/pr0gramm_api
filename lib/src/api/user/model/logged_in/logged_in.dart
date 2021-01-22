import 'package:json_annotation/json_annotation.dart';

part 'logged_in.g.dart';

@JsonSerializable(explicitToJson: true)
class LoggedIn {
  bool loggedIn;

  LoggedIn({this.loggedIn});

  factory LoggedIn.fromJson(Map<String, dynamic> json) => _$LoggedInFromJson(json);

  Map<String, dynamic> toJson() => _$LoggedInToJson(this);
}
