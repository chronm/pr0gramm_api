import 'package:json_annotation/json_annotation.dart';

part 'uploaded.g.dart';

@JsonSerializable()
class Uploaded {
  String key;

  Uploaded({this.key});

  factory Uploaded.fromJson(Map<String, dynamic> json) => _$UploadedFromJson(json);
}
