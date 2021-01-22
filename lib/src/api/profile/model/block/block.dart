import 'package:json_annotation/json_annotation.dart';

part 'block.g.dart';

@JsonSerializable(explicitToJson: true)
class Block {
  bool blocked;

  Block({this.blocked});

  factory Block.fromJson(Map<String, dynamic> json) => _$BlockFromJson(json);

  Map<String, dynamic> toJson() => _$BlockToJson(this);
}
