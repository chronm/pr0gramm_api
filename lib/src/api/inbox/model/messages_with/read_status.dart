class ReadStatus {

  static const ReadStatus OTHER = ReadStatus._(-1);
  static const ReadStatus UNREAD = ReadStatus._(0);
  static const ReadStatus READ = ReadStatus._(1);

  const ReadStatus._(this.value);
  final int value;

  static List<ReadStatus> get values => [OTHER, UNREAD, READ];

  factory ReadStatus.fromJson(int json) => values.firstWhere((flag) => flag.value == json);

  int toJson() => value;
}