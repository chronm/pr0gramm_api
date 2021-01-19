import 'package:json_annotation/json_annotation.dart';

import '../../../../../pr0gramm_api.dart';

part 'sync.g.dart';

@JsonSerializable()
class Sync {
  Inbox inbox;
  String log;
  int logLength;

  Sync({this.inbox, this.log, this.logLength});

  factory Sync.fromJson(Map<String, dynamic> json) => _$SyncFromJson(json);
}
