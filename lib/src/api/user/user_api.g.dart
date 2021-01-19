// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _UserApi implements UserApi {
  _UserApi(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://pr0gramm.com/api/user';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<Captcha> getCaptcha() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/captcha',
        queryParameters: queryParameters, options: RequestOptions(method: 'GET', headers: <String, dynamic>{}, extra: _extra, baseUrl: baseUrl), data: _data);
    final value = Captcha.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserInfo> getUserInfo() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/info',
        queryParameters: queryParameters, options: RequestOptions(method: 'GET', headers: <String, dynamic>{}, extra: _extra, baseUrl: baseUrl), data: _data);
    final value = UserInfo.fromJson(_result.data);
    return value;
  }

  @override
  Future<Login> login(username, password, token, captcha) async {
    ArgumentError.checkNotNull(username, 'username');
    ArgumentError.checkNotNull(password, 'password');
    ArgumentError.checkNotNull(token, 'token');
    ArgumentError.checkNotNull(captcha, 'captcha');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = {'name': username, 'password': password, 'token': token, 'captcha': captcha};
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>('/login',
        queryParameters: queryParameters,
        options: RequestOptions(method: 'POST', headers: <String, dynamic>{}, extra: _extra, contentType: 'application/x-www-form-urlencoded', baseUrl: baseUrl),
        data: _data);
    final value = Login.fromJson(_result.data);
    return value;
  }

  @override
  Future<Sync> sync(offset) async {
    ArgumentError.checkNotNull(offset, 'offset');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'offset': offset};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/sync',
        queryParameters: queryParameters, options: RequestOptions(method: 'GET', headers: <String, dynamic>{}, extra: _extra, baseUrl: baseUrl), data: _data);
    final value = Sync.fromJson(_result.data);
    return value;
  }

  @override
  Future<Logout> logout({nonce, id}) async {
    ArgumentError.checkNotNull(nonce, 'nonce');
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = {'_nonce': nonce, 'id': id};
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>('/logout',
        queryParameters: queryParameters,
        options: RequestOptions(method: 'POST', headers: <String, dynamic>{}, extra: _extra, contentType: 'application/x-www-form-urlencoded', baseUrl: baseUrl),
        data: _data);
    final value = Logout.fromJson(_result.data);
    return value;
  }

  @override
  Future<LoggedIn> loggedIn() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/loggedin',
        queryParameters: queryParameters, options: RequestOptions(method: 'GET', headers: <String, dynamic>{}, extra: _extra, baseUrl: baseUrl), data: _data);
    final value = LoggedIn.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserInfo> changePassword(currentPassword, password, {nonce}) async {
    ArgumentError.checkNotNull(currentPassword, 'currentPassword');
    ArgumentError.checkNotNull(password, 'password');
    ArgumentError.checkNotNull(nonce, 'nonce');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = {'currentPassword': currentPassword, 'password': password, '_nonce': nonce};
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>('/changepassword',
        queryParameters: queryParameters,
        options: RequestOptions(method: 'POST', headers: <String, dynamic>{}, extra: _extra, contentType: 'application/x-www-form-urlencoded', baseUrl: baseUrl),
        data: _data);
    final value = UserInfo.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserInfo> requestEmailChange(currentPassword, email, {nonce}) async {
    ArgumentError.checkNotNull(currentPassword, 'currentPassword');
    ArgumentError.checkNotNull(email, 'email');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = {'currentPassword': currentPassword, 'email': email, '_nonce': nonce};
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>('/requestemailchange',
        queryParameters: queryParameters,
        options: RequestOptions(method: 'POST', headers: <String, dynamic>{}, extra: _extra, contentType: 'application/x-www-form-urlencoded', baseUrl: baseUrl),
        data: _data);
    final value = UserInfo.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserInfo> changeSiteSettings(likesArePublic, favUpvote, showAds, userStatus, theme, {nonce}) async {
    ArgumentError.checkNotNull(likesArePublic, 'likesArePublic');
    ArgumentError.checkNotNull(favUpvote, 'favUpvote');
    ArgumentError.checkNotNull(showAds, 'showAds');
    ArgumentError.checkNotNull(userStatus, 'userStatus');
    ArgumentError.checkNotNull(theme, 'theme');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = {
      'likesArePublic': BoolConverter().convert(likesArePublic),
      'favUpvote': BoolConverter().convert(favUpvote),
      'showAds': BoolConverter().convert(showAds),
      'userStatus': userStatus,
      'theme': theme,
      '_nonce': nonce
    };
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>('/sitesettings',
        queryParameters: queryParameters,
        options: RequestOptions(method: 'POST', headers: <String, dynamic>{}, extra: _extra, contentType: 'application/x-www-form-urlencoded', baseUrl: baseUrl),
        data: _data);
    final value = UserInfo.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserInfo> changeSiteSecurity(deviceMail, {nonce}) async {
    ArgumentError.checkNotNull(deviceMail, 'deviceMail');
    ArgumentError.checkNotNull(nonce, 'nonce');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = {'deviceMail': BoolConverter().convert(deviceMail), '_nonce': nonce};
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>('/changesecurity',
        queryParameters: queryParameters,
        options: RequestOptions(method: 'POST', headers: <String, dynamic>{}, extra: _extra, contentType: 'application/x-www-form-urlencoded', baseUrl: baseUrl),
        data: _data);
    final value = UserInfo.fromJson(_result.data);
    return value;
  }

  @override
  Future<FollowUserWrapper> getFollowedUsers(flags) async {
    ArgumentError.checkNotNull(flags, 'flags');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'flags': flags?.toJson()};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/followlist',
        queryParameters: queryParameters, options: RequestOptions(method: 'GET', headers: <String, dynamic>{}, extra: _extra, baseUrl: baseUrl), data: _data);
    final value = FollowUserWrapper.fromJson(_result.data);
    return value;
  }
}
