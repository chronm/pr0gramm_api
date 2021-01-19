import 'package:json_annotation/json_annotation.dart';

part 'upload.g.dart';

@JsonSerializable()
class Upload {
  int id;
  String thumb;

  Upload({
    this.id,
    this.thumb,
  });

  factory Upload.fromJson(Map<String, dynamic> json) => _$UploadFromJson(json);
}
