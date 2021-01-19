// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ProfileApi implements ProfileApi {
  _ProfileApi(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://pr0gramm.com/api/profile';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<Profile> getProfile(name) async {
    ArgumentError.checkNotNull(name, 'name');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'name': name};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/info',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = Profile.fromJson(_result.data);
    return value;
  }

  @override
  Future<ProfileCommentWrapper> getComments(flags, before, name) async {
    ArgumentError.checkNotNull(flags, 'flags');
    ArgumentError.checkNotNull(before, 'before');
    ArgumentError.checkNotNull(name, 'name');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'flags': flags?.toJson(),
      r'before': DateTimeConverter().convert(before),
      r'name': name
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/comments/{flags}',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ProfileCommentWrapper.fromJson(_result.data);
    return value;
  }

  @override
  Future<LikedCommentWrapper> getCommentLikes(flags, before, name) async {
    ArgumentError.checkNotNull(flags, 'flags');
    ArgumentError.checkNotNull(before, 'before');
    ArgumentError.checkNotNull(name, 'name');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'flags': flags?.toJson(),
      r'before': DateTimeConverter().convert(before),
      r'name': name
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/commentlikes',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = LikedCommentWrapper.fromJson(_result.data);
    return value;
  }

  @override
  Future<Subscribe> subscribeToUser(name, {nonce}) async {
    ArgumentError.checkNotNull(name, 'name');
    ArgumentError.checkNotNull(nonce, 'nonce');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = {'name': name, '_nonce': nonce};
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>('/subscribe',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            contentType: 'application/x-www-form-urlencoded',
            baseUrl: baseUrl),
        data: _data);
    final value = Subscribe.fromJson(_result.data);
    return value;
  }

  @override
  Future<Subscribe> unsubscribeFromUser(name, {nonce}) async {
    ArgumentError.checkNotNull(name, 'name');
    ArgumentError.checkNotNull(nonce, 'nonce');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = {'name': name, '_nonce': nonce};
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>('/subscribe',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            contentType: 'application/x-www-form-urlencoded',
            baseUrl: baseUrl),
        data: _data);
    final value = Subscribe.fromJson(_result.data);
    return value;
  }

  @override
  Future<Follow> followUser(name, {nonce}) async {
    ArgumentError.checkNotNull(name, 'name');
    ArgumentError.checkNotNull(nonce, 'nonce');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = {'name': name, '_nonce': nonce};
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>('/follow',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            contentType: 'application/x-www-form-urlencoded',
            baseUrl: baseUrl),
        data: _data);
    final value = Follow.fromJson(_result.data);
    return value;
  }

  @override
  Future<Follow> unfollowUser(name, {nonce}) async {
    ArgumentError.checkNotNull(name, 'name');
    ArgumentError.checkNotNull(nonce, 'nonce');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = {'name': name, '_nonce': nonce};
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>('/unfollow',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            contentType: 'application/x-www-form-urlencoded',
            baseUrl: baseUrl),
        data: _data);
    final value = Follow.fromJson(_result.data);
    return value;
  }

  @override
  Future<Block> blockUser(name, {nonce}) async {
    ArgumentError.checkNotNull(name, 'name');
    ArgumentError.checkNotNull(nonce, 'nonce');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = {'name': name, '_nonce': nonce};
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>('/block',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            contentType: 'application/x-www-form-urlencoded',
            baseUrl: baseUrl),
        data: _data);
    final value = Block.fromJson(_result.data);
    return value;
  }

  @override
  Future<Block> unblockUser(name, {nonce}) async {
    ArgumentError.checkNotNull(name, 'name');
    ArgumentError.checkNotNull(nonce, 'nonce');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = {'name': name, '_nonce': nonce};
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>('/unblock',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            contentType: 'application/x-www-form-urlencoded',
            baseUrl: baseUrl),
        data: _data);
    final value = Block.fromJson(_result.data);
    return value;
  }
}
