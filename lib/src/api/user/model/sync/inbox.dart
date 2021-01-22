import 'package:json_annotation/json_annotation.dart';

part 'inbox.g.dart';

@JsonSerializable(explicitToJson: true)
class Inbox {
  int comments;
  int mentions;
  int messages;
  int notifications;
  int follows;

  Inbox({
    this.comments,
    this.mentions,
    this.messages,
    this.notifications,
    this.follows,
  });

  factory Inbox.fromJson(Map<String, dynamic> json) => _$InboxFromJson(json);

  Map<String, dynamic> toJson() => _$InboxToJson(this);
}
