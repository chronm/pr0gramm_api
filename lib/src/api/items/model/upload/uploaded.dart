import 'package:json_annotation/json_annotation.dart';

part 'uploaded.g.dart';

@JsonSerializable(explicitToJson: true)
class Uploaded {
  String key;

  Uploaded({this.key});

  factory Uploaded.fromJson(Map<String, dynamic> json) => _$UploadedFromJson(json);

  Map<String, dynamic> toJson() => _$UploadedToJson(this);
}
