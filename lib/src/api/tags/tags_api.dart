import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:retrofit/retrofit.dart';

import '../../../pr0gramm_api.dart';

part 'tags_api.g.dart';

@RestApi(baseUrl: 'https://pr0gramm.com/api/tags')
abstract class TagsApi {
  factory TagsApi(Dio dio, {String baseUrl}) = _TagsApi;

  @GET('/top')
  Future<SuggestedTags> getTags();

  @POST('/add')
  Future<AddedTags> addTag(@Field('tags') String tags, @Field('itemId') int itemIdm, {@required @Field('_nonce') String nonce});

  @POST('/vote')
  Future<void> voteTag(@Field('id') int id, @Field('vote') int vote, {@required @Field('_nonce') String nonce});
}
