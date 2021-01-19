import 'package:json_annotation/json_annotation.dart';

part 'ban_reason.g.dart';

@JsonSerializable()
class BanReason {
  String banReason;
  double number;

  BanReason({this.banReason, this.number});

  factory BanReason.fromJson(Map<String, dynamic> json) =>
      _$BanReasonFromJson(json);
}

@JsonSerializable()
class BanReasonWrapper {
  List<BanReason> rules;

  BanReasonWrapper({this.rules});

  factory BanReasonWrapper.fromJson(Map<String, dynamic> json) =>
      _$BanReasonWrapperFromJson(json);
}

/// Look at ban_reasons.xlsx in the root of this library for explanation
class BanReasonType {
  static const BanReasonType UPLOAD = BanReasonType._(1);
  static const BanReasonType COMMENT = BanReasonType._(2);
  static const BanReasonType USER = BanReasonType._(4);
  static const BanReasonType ALL = BanReasonType._(63);

  const BanReasonType._(this.value);
  final int value;

  static List<BanReasonType> get values => [UPLOAD, COMMENT, USER, ALL];

  int toJson() => value;
}
