import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:retrofit/http.dart';

part 'contact_api.g.dart';

@RestApi(baseUrl: 'https://pr0gramm.com/api/contact')
abstract class ContactApi {
  factory ContactApi(Dio dio, {String baseUrl}) = _ContactApi;

  @POST('/report')
  @FormUrlEncoded()
  Future<void> report(@Field('reason') String reason, @Field('customReason') String customReason,
      {@required @Field('_nonce') String nonce, @Field('userId') int userId, @Field('commentId') int commentId, @Field('itemId') int itemId});

  @POST('/send')
  @FormUrlEncoded()
  Future<void> send(@Field('email') String email, @Field('subject') String subject, @Field('message') String message);
}
