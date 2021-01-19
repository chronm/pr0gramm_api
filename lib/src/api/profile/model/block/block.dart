import 'package:json_annotation/json_annotation.dart';

part 'block.g.dart';

@JsonSerializable()
class Block {
  bool blocked;

  Block({this.blocked});

  factory Block.fromJson(Map<String, dynamic> json) => _$BlockFromJson(json);
}
