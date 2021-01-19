// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tags_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _TagsApi implements TagsApi {
  _TagsApi(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://pr0gramm.com/api/tags';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<SuggestedTags> getTags() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/top', queryParameters: queryParameters, options: RequestOptions(method: 'GET', headers: <String, dynamic>{}, extra: _extra, baseUrl: baseUrl), data: _data);
    final value = SuggestedTags.fromJson(_result.data);
    return value;
  }

  @override
  Future<AddedTags> addTag(tags, itemIdm, {nonce}) async {
    ArgumentError.checkNotNull(tags, 'tags');
    ArgumentError.checkNotNull(itemIdm, 'itemIdm');
    ArgumentError.checkNotNull(nonce, 'nonce');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = {'tags': tags, 'itemId': itemIdm, '_nonce': nonce};
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>('/add', queryParameters: queryParameters, options: RequestOptions(method: 'POST', headers: <String, dynamic>{}, extra: _extra, baseUrl: baseUrl), data: _data);
    final value = AddedTags.fromJson(_result.data);
    return value;
  }

  @override
  Future<void> voteTag(id, vote, {nonce}) async {
    ArgumentError.checkNotNull(id, 'id');
    ArgumentError.checkNotNull(vote, 'vote');
    ArgumentError.checkNotNull(nonce, 'nonce');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = {'id': id, 'vote': vote, '_nonce': nonce};
    _data.removeWhere((k, v) => v == null);
    await _dio.request<void>('/vote', queryParameters: queryParameters, options: RequestOptions(method: 'POST', headers: <String, dynamic>{}, extra: _extra, baseUrl: baseUrl), data: _data);
    return null;
  }
}
