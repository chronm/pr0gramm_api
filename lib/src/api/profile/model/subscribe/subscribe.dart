import 'package:json_annotation/json_annotation.dart';

part 'subscribe.g.dart';

@JsonSerializable()
class Subscribe {
  bool subscribed;

  Subscribe({this.subscribed});

  factory Subscribe.fromJson(Map<String, dynamic> json) => _$SubscribeFromJson(json);
}