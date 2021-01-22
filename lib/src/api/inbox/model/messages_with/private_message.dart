import 'package:json_annotation/json_annotation.dart';
import 'package:pr0gramm_api/pr0gramm_api.dart';

part 'private_message.g.dart';

@JsonSerializable(explicitToJson: true)
class PrivateMessage {
  DateTime created;
  int id;
  UserMark mark;
  String message;
  String name;
  ReadStatus read;
  bool sent;

  PrivateMessage({
    this.created,
    this.id,
    this.mark,
    this.message,
    this.name,
    this.read,
    this.sent,
  });

  factory PrivateMessage.fromJson(Map<String, dynamic> json) => _$PrivateMessageFromJson(json);

  Map<String, dynamic> toJson() => _$PrivateMessageToJson(this);
}
