import 'package:json_annotation/json_annotation.dart';

part 'posted.g.dart';

@JsonSerializable()
class Posted {
  String queueId;
  bool scheduled;

  Posted({this.queueId, this.scheduled});

  factory Posted.fromJson(Map<String, dynamic> json) => _$PostedFromJson(json);
}
