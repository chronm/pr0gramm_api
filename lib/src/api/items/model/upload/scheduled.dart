import 'package:json_annotation/json_annotation.dart';
import 'package:pr0gramm_api/src/util/converters.dart';

part 'scheduled.g.dart';

@JsonSerializable()
@DateTimeConverter()
class Scheduled {
  String comment;
  DateTime created;
  int id;
  DateTime scheduled;
  List<String> tags;
  String thumb;

  Scheduled({
    this.comment,
    this.created,
    this.id,
    this.scheduled,
    this.tags,
    this.thumb,
  });

  factory Scheduled.fromJson(Map<String, dynamic> json) => _$ScheduledFromJson(json);
}

@JsonSerializable()
class ScheduledWrapper {
  List<Scheduled> items;

  ScheduledWrapper({this.items});

  factory ScheduledWrapper.fromJson(Map<String, dynamic> json) => _$ScheduledWrapperFromJson(json);
}
