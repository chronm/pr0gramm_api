import 'package:json_annotation/json_annotation.dart';

part 'ban_info.g.dart';

@JsonSerializable(explicitToJson: true)
class BanInfo {
  String reason;
  bool banned;
  DateTime till;

  BanInfo({
    this.reason,
    this.banned,
    this.till,
  });

  factory BanInfo.fromJson(Map<String, dynamic> json) => _$BanInfoFromJson(json);

  Map<String, dynamic> toJson() => _$BanInfoToJson(this);
}
