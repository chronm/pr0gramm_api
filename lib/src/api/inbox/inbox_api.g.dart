// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inbox_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _InboxApi implements InboxApi {
  _InboxApi(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://pr0gramm.com/api/inbox';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<MessageWrapper> getAllInbox({older}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'older': DateTimeConverter().convert(older)
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/all',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = MessageWrapper.fromJson(_result.data);
    return value;
  }

  @override
  Future<MessageWrapper> getInboxComments() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/comments',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = MessageWrapper.fromJson(_result.data);
    return value;
  }

  @override
  Future<MessageWrapper> getInboxNotifications() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/notifications',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = MessageWrapper.fromJson(_result.data);
    return value;
  }

  @override
  Future<ConversationWrapper> getInboxConversations() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/conversations',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ConversationWrapper.fromJson(_result.data);
    return value;
  }

  @override
  Future<MessageWith> getInboxMessagesWith(name) async {
    ArgumentError.checkNotNull(name, 'name');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'with': name};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/messages',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = MessageWith.fromJson(_result.data);
    return value;
  }

  @override
  Future<void> sendMessage(name, comment, {nonce}) async {
    ArgumentError.checkNotNull(name, 'name');
    ArgumentError.checkNotNull(comment, 'comment');
    ArgumentError.checkNotNull(nonce, 'nonce');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = {'recipientName': name, 'comment': comment, '_nonce': nonce};
    _data.removeWhere((k, v) => v == null);
    await _dio.request<void>('/post',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            contentType: 'application/x-www-form-urlencoded',
            baseUrl: baseUrl),
        data: _data);
    return null;
  }

  @override
  Future<MessageWrapper> getFollows() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/follows',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = MessageWrapper.fromJson(_result.data);
    return value;
  }

  @override
  Future<BlockedUserWrapper> getBlockedUsers() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/blocklist',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = BlockedUserWrapper.fromJson(_result.data);
    return value;
  }
}
