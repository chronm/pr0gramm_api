import 'package:json_annotation/json_annotation.dart';

import '../../../../../pr0gramm_api.dart';

part 'conversation.g.dart';

@JsonSerializable(explicitToJson: true)
class Conversation {
  bool blocked;
  DateTime lastMessage;
  UserMark mark;
  String name;
  int unreadCount;

  Conversation({
    this.blocked,
    this.lastMessage,
    this.mark,
    this.name,
    this.unreadCount,
  });

  factory Conversation.fromJson(Map<String, dynamic> json) => _$ConversationFromJson(json);

  Map<String, dynamic> toJson() => _$ConversationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ConversationWrapper {
  bool atEnd;
  List<Conversation> conversations;

  ConversationWrapper({
    this.atEnd,
    this.conversations,
  });

  factory ConversationWrapper.fromJson(Map<String, dynamic> json) => _$ConversationWrapperFromJson(json);

  Map<String, dynamic> toJson() => _$ConversationWrapperToJson(this);
}
