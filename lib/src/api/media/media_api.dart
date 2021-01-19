import 'package:dio/dio.dart';

abstract class AbstractMediaApi {
  AbstractMediaApi(this._dio, this._baseUrl) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;
  final String _baseUrl;

  String _formatUrl(String urlPath) => urlPath.startsWith('/') ? urlPath : '/$urlPath';

  Future<void> _load(String urlPath, String savePath) => _dio.download(_formatUrl(urlPath), savePath, options: RequestOptions(baseUrl: _baseUrl));
}

class BadgeApi extends AbstractMediaApi {
  BadgeApi(Dio dio, {String baseUrl}) : super(dio, baseUrl ?? 'https://pr0gramm.com/media/badges');

  Future<void> loadBadge(String urlPath, String savePath) => _load(urlPath, savePath);
}

class ImageApi extends AbstractMediaApi {
  ImageApi(Dio dio, {String baseUrl}) : super(dio, baseUrl ?? 'https://full.pr0gramm.com');

  Future<void> loadImage(String urlPath, String savePath) => _load(urlPath, savePath);
}

class VideoApi extends AbstractMediaApi {
  VideoApi(Dio dio, {String baseUrl}) : super(dio, baseUrl ?? 'https://vid.pr0gramm.com');

  Future<void> loadVideo(String urlPath, String savePath) => _load(urlPath, savePath);
}

class ThumbApi extends AbstractMediaApi {
  ThumbApi(Dio dio, {String baseUrl}) : super(dio, baseUrl ?? 'https://thumb.pr0gramm.com');

  Future<void> loadThumb(String urlPath, String savePath) => _load(urlPath, savePath);
}
