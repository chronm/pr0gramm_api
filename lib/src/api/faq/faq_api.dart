import 'package:dio/dio.dart';
import 'package:pr0gramm_api/src/util/converters.dart';
import 'package:retrofit/retrofit.dart';

import '../../../pr0gramm_api.dart';

part 'faq_api.g.dart';

@RestApi(baseUrl: 'https://pr0gramm.com/api/faq')
abstract class FaqApi {
  factory FaqApi(Dio dio, {String baseUrl}) = _FaqApi;

  @GET('/reasons')
  @BanReasonTypeConverter()
  Future<BanReasonWrapper> getBanReasons(@Query('type') BanReasonType type);
}
