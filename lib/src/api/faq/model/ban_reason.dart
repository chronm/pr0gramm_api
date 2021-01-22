import 'package:json_annotation/json_annotation.dart';

part 'ban_reason.g.dart';

@JsonSerializable(explicitToJson: true)
class BanReason {
  String banReason;
  double number;

  BanReason({this.banReason, this.number});

  factory BanReason.fromJson(Map<String, dynamic> json) => _$BanReasonFromJson(json);

  Map<String, dynamic> toJson() => _$BanReasonToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BanReasonWrapper {
  List<BanReason> rules;

  BanReasonWrapper({this.rules});

  factory BanReasonWrapper.fromJson(Map<String, dynamic> json) => _$BanReasonWrapperFromJson(json);

  Map<String, dynamic> toJson() => _$BanReasonWrapperToJson(this);
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
