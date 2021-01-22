import 'dart:convert';
import 'dart:typed_data';

import 'package:json_annotation/json_annotation.dart';

import '../../../../../pr0gramm_api.dart';

part 'sync.g.dart';

@JsonSerializable(explicitToJson: true)
class Sync {
  Inbox inbox;
  int logLength;
  int log;
  @JsonKey(ignore: true)
  Map<int, Vote> votedItems;
  @JsonKey(ignore: true)
  Map<int, Vote> votedComments;
  @JsonKey(ignore: true)
  Map<int, Vote> votedTags;
  @JsonKey(ignore: true)
  Map<int, FollowState> follows;
  @JsonKey(ignore: true)
  Map<int, bool> commentFavs;
  @JsonKey(ignore: true)
  Map<int, ItemInCollection> collectedItems;

  Sync._(this.inbox, this.logLength, this.votedItems, this.votedComments, this.votedTags, this.follows, this.commentFavs, this.collectedItems);

  factory Sync({Inbox inbox, String log, int logLength}) {
    var votedItems = <int, Vote>{};
    var votedComments = <int, Vote>{};
    var votedTags = <int, Vote>{};
    var follows = <int, FollowState>{};
    var commentFavs = <int, bool>{};
    var collectedItems = <int, ItemInCollection>{};

    void decodeLog(String log) {
      var data = base64Decode(log).buffer.asByteData();
      var length = data.lengthInBytes / 5;

      ItemInCollection pendingCollection;

      for (var index in List.generate(length.ceil(), (index) => index)) {
        var id = data.getUint32(index * 5, Endian.little);
        var action = data.getUint8(index * 5 + 4);

        if (_VOTE_ACTIONS.containsKey(action)) {
          switch (_VOTE_ACTIONS[action].target) {
            case VoteTarget.ITEM:
              votedItems.putIfAbsent(id, () => _VOTE_ACTIONS[action].vote);
              break;
            case VoteTarget.COMMENT:
              votedComments.putIfAbsent(id, () => _VOTE_ACTIONS[action].vote);
              break;
            case VoteTarget.TAG:
              votedTags.putIfAbsent(id, () => _VOTE_ACTIONS[action].vote);
              break;
          }
          continue;
        }

        if (_FOLLOW_ACTION.containsKey(action)) {
          follows.putIfAbsent(id, () => _FOLLOW_ACTION[action]);
          continue;
        }

        switch (id) {
          case _ACTION_COMMENT_FAV:
            commentFavs.putIfAbsent(id, () => true);
            break;
          case _ACTION_COMMENT_UNFAV:
            commentFavs.putIfAbsent(id, () => false);
            break;
          case _ACTION_ITEM_COLLECT:
            pendingCollection = ItemInCollection(id, true);
            break;
          case _ACTION_ITEM_UNCOLLECT:
            pendingCollection = ItemInCollection(id, false);
            break;
          case _ACTION_COLLECTION_ID:
            collectedItems.putIfAbsent(id, () => pendingCollection);
        }
      }
    }

    decodeLog(log);

    return Sync._(inbox, logLength, votedItems, votedComments, votedTags, follows, commentFavs, collectedItems);
  }

  factory Sync.fromJson(Map<String, dynamic> json) => _$SyncFromJson(json);

  Map<String, dynamic> toJson() => _$SyncToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ItemInCollection {
  final int collectionId;
  final bool collect;

  ItemInCollection(this.collectionId, this.collect);

  factory ItemInCollection.fromJson(Map<String, dynamic> json) => _$ItemInCollectionFromJson(json);

  Map<String, dynamic> toJson() => _$ItemInCollectionToJson(this);
}

Map<int, Voted> _VOTE_ACTIONS = {
  1: Voted(vote: Vote.DOWN, target: VoteTarget.ITEM),
  2: Voted(vote: Vote.NEUTRAL, target: VoteTarget.ITEM),
  3: Voted(vote: Vote.UP, target: VoteTarget.ITEM),
  4: Voted(vote: Vote.DOWN, target: VoteTarget.COMMENT),
  5: Voted(vote: Vote.NEUTRAL, target: VoteTarget.COMMENT),
  6: Voted(vote: Vote.UP, target: VoteTarget.COMMENT),
  7: Voted(vote: Vote.DOWN, target: VoteTarget.TAG),
  8: Voted(vote: Vote.NEUTRAL, target: VoteTarget.TAG),
  9: Voted(vote: Vote.UP, target: VoteTarget.TAG),
};

Map<int, FollowState> _FOLLOW_ACTION = {
  12: FollowState.FOLLOW,
  13: FollowState.NONE,
  14: FollowState.SUBSCRIBED,
  15: FollowState.FOLLOW,
};

const int _ACTION_COMMENT_FAV = 16;
const int _ACTION_COMMENT_UNFAV = 17;

const int _ACTION_ITEM_UNCOLLECT = 18;
const int _ACTION_ITEM_COLLECT = 19;
const int _ACTION_COLLECTION_ID = 20;

enum Vote { DOWN, NEUTRAL, UP }
enum VoteTarget { ITEM, COMMENT, TAG }
enum FollowState { FOLLOW, NONE, SUBSCRIBED }

@JsonSerializable(explicitToJson: true)
class Voted {
  final Vote vote;
  final VoteTarget target;

  Voted({this.vote, this.target});

  factory Voted.fromJson(Map<String, dynamic> json) => _$VotedFromJson(json);

  Map<String, dynamic> toJson() => _$VotedToJson(this);
}
