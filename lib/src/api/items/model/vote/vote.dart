class VoteAction {
  static const VoteAction DOWNVOTE = VoteAction._(-1);
  static const VoteAction NEUTRAL = VoteAction._(0);
  static const VoteAction UPVOTE = VoteAction._(1);

  const VoteAction._(this.value);

  final int value;

  static List<VoteAction> get values => [DOWNVOTE, NEUTRAL, UPVOTE];

  factory VoteAction.fromJson(int json) => values.firstWhere((vote) => vote.value == json);
}
