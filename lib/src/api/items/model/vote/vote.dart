class Vote {
  static const Vote DOWNVOTE = Vote._(-1);
  static const Vote NEUTRAL = Vote._(0);
  static const Vote UPVOTE = Vote._(1);

  const Vote._(this.value);
  final int value;

  static List<Vote> get values => [DOWNVOTE, NEUTRAL, UPVOTE];

  factory Vote.fromJson(int json) => values.firstWhere((vote) => vote.value == json);
}