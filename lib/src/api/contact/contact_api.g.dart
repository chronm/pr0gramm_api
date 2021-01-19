// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ContactApi implements ContactApi {
  _ContactApi(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://pr0gramm.com/api/contact';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<void> report(reason, customReason,
      {nonce, userId, commentId, itemId}) async {
    ArgumentError.checkNotNull(reason, 'reason');
    ArgumentError.checkNotNull(customReason, 'customReason');
    ArgumentError.checkNotNull(nonce, 'nonce');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = {
      'reason': reason,
      'customReason': customReason,
      '_nonce': nonce,
      'userId': userId,
      'commentId': commentId,
      'itemId': itemId
    };
    _data.removeWhere((k, v) => v == null);
    await _dio.request<void>('/report',
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
  Future<void> send(email, subject, message) async {
    ArgumentError.checkNotNull(email, 'email');
    ArgumentError.checkNotNull(subject, 'subject');
    ArgumentError.checkNotNull(message, 'message');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = {'email': email, 'subject': subject, 'message': message};
    _data.removeWhere((k, v) => v == null);
    await _dio.request<void>('/send',
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
}
