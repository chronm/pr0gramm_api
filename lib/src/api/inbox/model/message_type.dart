class MessageType {
  static const MessageType FOLLOWS = MessageType._('follows');
  static const MessageType COMMENT = MessageType._('comment');
  static const MessageType NOTIFICATION = MessageType._('notification');

  const MessageType._(this.value);
  final String value;

  static List<MessageType> get values => [COMMENT, FOLLOWS, NOTIFICATION];

  factory MessageType.fromJson(String json) => MessageType.values.firstWhere((flag) => flag.value == json);

  String toJson() => value;
}
