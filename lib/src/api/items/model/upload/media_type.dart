import 'package:http_parser/http_parser.dart' as http;

class MediaType {
  static final MediaType IMAGE_JPEG = MediaType._(['jpeg', 'jpg', 'jpe'], http.MediaType.parse('image/jpeg'));
  static final MediaType IMAGE_PNG = MediaType._(['png'], http.MediaType.parse('image/png'));
  static final MediaType IMAGE_GIF = MediaType._(['gif'], http.MediaType.parse('image/gif'));
  static final MediaType VIDEO_WEBM = MediaType._(['webm'], http.MediaType.parse('video/webm'));
  static final MediaType VIDEO_MP4 = MediaType._(['mp4'], http.MediaType.parse('video/mp4'));

  const MediaType._(this.extensions, this.value);
  final List<String> extensions;
  final http.MediaType value;

  static List<MediaType> get values => [IMAGE_JPEG, IMAGE_PNG, IMAGE_GIF, VIDEO_WEBM, VIDEO_MP4];

  factory MediaType.fromFilePath(String filename) {
    final extension = filename.lastIndexOf('.');
    return values.firstWhere((value) => value.extensions.contains(extension));
  }

  http.MediaType convert() => value;
}