import 'package:json_annotation/json_annotation.dart';

part 'ban_info.g.dart';

@JsonSerializable()
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
}
