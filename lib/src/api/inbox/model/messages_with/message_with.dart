import 'package:json_annotation/json_annotation.dart';

import '../../../../../pr0gramm_api.dart';

part 'message_with.g.dart';

@JsonSerializable()
class MessageWith {
  bool atEnd;
  List<PrivateMessage> messages;
  @JsonKey(name: 'with')
  SimpleUser user;

  MessageWith({this.atEnd, this.messages, this.user,});

  factory MessageWith.fromJson(Map<String, dynamic> json) => _$MessageWithFromJson(json);
}