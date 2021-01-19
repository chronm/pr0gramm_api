// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ItemsApi implements ItemsApi {
  _ItemsApi(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://pr0gramm.com/api/items';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<ItemWrapper> getItems({id, older, flags, promoted, user, likes, self, following, tags, collection}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'id': id, r'older': DateTimeConverter().convert(older), r'flags': flags?.toJson(), r'promoted': promoted, r'user': user, r'likes': likes, r'self': self, r'following': following, r'tags': tags, r'collection': collection};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/get', queryParameters: queryParameters, options: RequestOptions(method: 'GET', headers: <String, dynamic>{}, extra: _extra, baseUrl: baseUrl), data: _data);
    final value = ItemWrapper.fromJson(_result.data);
    return value;
  }

  @override
  Future<ItemInfo> getItemInfo(id) async {
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'itemId': id};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/info', queryParameters: queryParameters, options: RequestOptions(method: 'GET', headers: <String, dynamic>{}, extra: _extra, baseUrl: baseUrl), data: _data);
    final value = ItemInfo.fromJson(_result.data);
    return value;
  }

  @override
  Future<void> voteItem(id, vote, {nonce}) async {
    ArgumentError.checkNotNull(id, 'id');
    ArgumentError.checkNotNull(vote, 'vote');
    ArgumentError.checkNotNull(nonce, 'nonce');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = {'id': id, 'vote': vote, '_nonce': nonce};
    _data.removeWhere((k, v) => v == null);
    await _dio.request<void>('/vote', queryParameters: queryParameters, options: RequestOptions(method: 'POST', headers: <String, dynamic>{}, extra: _extra, contentType: 'application/x-www-form-urlencoded', baseUrl: baseUrl), data: _data);
    return null;
  }

  @override
  Future<void> ratelimit() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    await _dio.request<void>('/ratelimited', queryParameters: queryParameters, options: RequestOptions(method: 'POST', headers: <String, dynamic>{}, extra: _extra, baseUrl: baseUrl), data: _data);
    return null;
  }

  @override
  Future<Uploaded> uploadWithFormData(formData) async {
    ArgumentError.checkNotNull(formData, 'formData');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = formData;
    final _result = await _dio.request<Map<String, dynamic>>('/upload', queryParameters: queryParameters, options: RequestOptions(method: 'POST', headers: <String, dynamic>{}, extra: _extra, baseUrl: baseUrl), data: _data);
    final value = Uploaded.fromJson(_result.data);
    return value;
  }

  @override
  Future<Posted> post(imageUrl, sfwstatus, tags, comment, key, {nonce, checkSimilar, processAsync, date, time}) async {
    ArgumentError.checkNotNull(imageUrl, 'imageUrl');
    ArgumentError.checkNotNull(sfwstatus, 'sfwstatus');
    ArgumentError.checkNotNull(tags, 'tags');
    ArgumentError.checkNotNull(comment, 'comment');
    ArgumentError.checkNotNull(key, 'key');
    ArgumentError.checkNotNull(nonce, 'nonce');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = {
      'imageUrl': imageUrl,
      'sfwstatus': ItemFlagConverter().convert(sfwstatus),
      'tags': tags,
      'comment': comment,
      'key': key,
      '_nonce': nonce,
      'checkSimilar': BoolConverter().convert(checkSimilar),
      'processAsync': BoolConverter().convert(processAsync),
      'scheduledDate': date,
      'scheduledTime': time
    };
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>('post', queryParameters: queryParameters, options: RequestOptions(method: 'POST', headers: <String, dynamic>{}, extra: _extra, contentType: 'application/x-www-form-urlencoded', baseUrl: baseUrl), data: _data);
    final value = Posted.fromJson(_result.data);
    return value;
  }

  @override
  Future<ScheduledWrapper> getScheduled() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/scheduled', queryParameters: queryParameters, options: RequestOptions(method: 'GET', headers: <String, dynamic>{}, extra: _extra, baseUrl: baseUrl), data: _data);
    final value = ScheduledWrapper.fromJson(_result.data);
    return value;
  }
}
