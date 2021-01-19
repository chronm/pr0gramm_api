// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _FaqApi implements FaqApi {
  _FaqApi(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://pr0gramm.com/api/faq';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<BanReasonWrapper> getBanReasons(type) async {
    ArgumentError.checkNotNull(type, 'type');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'type': BanReasonTypeConverter().convert(type)};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/reasons',
        queryParameters: queryParameters, options: RequestOptions(method: 'GET', headers: <String, dynamic>{}, extra: _extra, baseUrl: baseUrl), data: _data);
    final value = BanReasonWrapper.fromJson(_result.data);
    return value;
  }
}
