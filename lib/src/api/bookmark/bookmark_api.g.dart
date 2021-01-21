// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _BookmarkApi implements BookmarkApi {
  _BookmarkApi(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://pr0gramm.com/api/bookmarks';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<BookmarkWrapper> getBookmarks() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/get',
        queryParameters: queryParameters, options: RequestOptions(method: 'GET', headers: <String, dynamic>{}, extra: _extra, baseUrl: baseUrl), data: _data);
    final value = BookmarkWrapper.fromJson(_result.data);
    return value;
  }
}
