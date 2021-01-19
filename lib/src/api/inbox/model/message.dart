import 'package:json_annotation/json_annotation.dart';

import '../../../../pr0gramm_api.dart';

part 'message.g.dart';

@JsonSerializable()
class Message {
  bool blocked;
  DateTime created;
  ItemFlags flags;
  int id;
  String image;
  int itemId;
  UserMark mark;
  String message;
  String name;
  bool read;
  int score;
  int senderId;
  String thumb;
  MessageType type;

  Message({
    this.blocked,
    this.created,
    this.flags,
    this.id,
    this.image,
    this.itemId,
    this.mark,
    this.message,
    this.name,
    this.read,
    this.score,
    this.senderId,
    this.thumb,
    this.type,
  });

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);
}

@JsonSerializable()
class MessageWrapper {
  List<Message> messages;

  MessageWrapper({this.messages});

  factory MessageWrapper.fromJson(Map<String, dynamic> json) => _$MessageWrapperFromJson(json);
}