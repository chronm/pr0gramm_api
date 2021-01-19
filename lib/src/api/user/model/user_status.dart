class UserStatus {
  static const UserStatus PAID = UserStatus._('paid');
  static const UserStatus DEFAULT = UserStatus._('default');

  const UserStatus._(this.value);
  final String value;

  static List<UserStatus> get values => [PAID, DEFAULT];

  factory UserStatus.fromJson(String json) => values.firstWhere((status) => status.value == json);

  String toJson() => value;
}