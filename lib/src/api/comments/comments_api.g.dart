// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _CommentsApi implements CommentsApi {
  _CommentsApi(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://pr0gramm.com/api/comments';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<void> voteComment(id, vote, {nonce}) async {
    ArgumentError.checkNotNull(id, 'id');
    ArgumentError.checkNotNull(vote, 'vote');
    ArgumentError.checkNotNull(nonce, 'nonce');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = {'id': id, 'vote': vote, '_nonce': nonce};
    _data.removeWhere((k, v) => v == null);
    await _dio.request<void>('/vote',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    return null;
  }

  @override
  Future<void> postComment(comment, itemId, {nonce, parentId}) async {
    ArgumentError.checkNotNull(comment, 'comment');
    ArgumentError.checkNotNull(itemId, 'itemId');
    ArgumentError.checkNotNull(nonce, 'nonce');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = {
      'comment': comment,
      'itemId': itemId,
      '_nonce': nonce,
      'parentId': parentId
    };
    _data.removeWhere((k, v) => v == null);
    await _dio.request<void>('/post',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    return null;
  }

  @override
  Future<void> favComment(id, {nonce}) async {
    ArgumentError.checkNotNull(id, 'id');
    ArgumentError.checkNotNull(nonce, 'nonce');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = {'id': id, '_nonce': nonce};
    _data.removeWhere((k, v) => v == null);
    await _dio.request<void>('/fav',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    return null;
  }

  @override
  Future<void> unfavComment(id, {nonce}) async {
    ArgumentError.checkNotNull(id, 'id');
    ArgumentError.checkNotNull(nonce, 'nonce');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = {'id': id, '_nonce': nonce};
    _data.removeWhere((k, v) => v == null);
    await _dio.request<void>('/unfav',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    return null;
  }
}
