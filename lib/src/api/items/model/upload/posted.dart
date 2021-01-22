import 'package:json_annotation/json_annotation.dart';

part 'posted.g.dart';

@JsonSerializable(explicitToJson: true)
class Posted {
  String queueId;
  bool scheduled;

  Posted({this.queueId, this.scheduled});

  factory Posted.fromJson(Map<String, dynamic> json) => _$PostedFromJson(json);

  Map<String, dynamic> toJson() => _$PostedToJson(this);
}
