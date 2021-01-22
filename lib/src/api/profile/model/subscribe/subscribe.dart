import 'package:json_annotation/json_annotation.dart';

part 'subscribe.g.dart';

@JsonSerializable(explicitToJson: true)
class Subscribe {
  bool subscribed;

  Subscribe({this.subscribed});

  factory Subscribe.fromJson(Map<String, dynamic> json) => _$SubscribeFromJson(json);

  Map<String, dynamic> toJson() => _$SubscribeToJson(this);
}
