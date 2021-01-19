import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:retrofit/http.dart';

import '../../../pr0gramm_api.dart';

part 'comments_api.g.dart';

@RestApi(baseUrl: 'https://pr0gramm.com/api/comments')
abstract class CommentsApi {
  factory CommentsApi(Dio dio, {String baseUrl}) = _CommentsApi;

  @POST('/vote')
  Future<void> voteComment(@Field('id') int id, @Field('vote') Vote vote, {@required @Field('_nonce') String nonce});

  @POST('/post')
  Future<void> postComment(@Field('comment') String comment, @Field('itemId') int itemId, {@required @Field('_nonce') String nonce, @Field('parentId') int parentId});

  @POST('/fav')
  Future<void> favComment(@Field('id') int id, {@required @Field('_nonce') String nonce});

  @POST('/unfav')
  Future<void> unfavComment(@Field('id') int id, {@required @Field('_nonce') String nonce});
}