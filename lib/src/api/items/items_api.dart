import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:pr0gramm_api/src/util/converters.dart';
import 'package:retrofit/retrofit.dart';

import '../../../pr0gramm_api.dart';

part 'items_api.g.dart';

@RestApi(baseUrl: 'https://pr0gramm.com/api/items')
abstract class ItemsApi {
  factory ItemsApi(Dio dio, {String baseUrl}) = _ItemsApi;

  @GET('/get')
  @DateTimeConverter()
  Future<ItemWrapper> getItems({
    @Query('id') int id,
    @Query('older') DateTime older,
    @Query('flags') ItemFlags flags,
    @Query('promoted') bool promoted,
    @Query('user') String user,
    @Query('likes') String likes,
    @Query('self') bool self,
    @Query('following') bool following,
    @Query('tags') String tags,
    @Query('collection') String collection,
  });

  @GET('/info')
  Future<ItemInfo> getItemInfo(@Query('itemId') int id);

  @POST('/vote')
  @FormUrlEncoded()
  Future<void> voteItem(@Field('id') int id, @Field('vote') VoteAction vote, {@required @Field('_nonce') String nonce});

  @POST('/ratelimited')
  Future<void> ratelimit();

  @POST('/upload')
  Future<Uploaded> uploadWithFormData(@Body() FormData formData);

  @POST('post')
  @FormUrlEncoded()
  @BoolConverter()
  @ItemFlagConverter()
  Future<Posted> post(
    @Field('imageUrl') String imageUrl,
    @Field('sfwstatus') ItemFlag sfwstatus,
    @Field('tags') String tags,
    @Field('comment') String comment,
    @Field('key') String key, {
    @required @Field('_nonce') String nonce,
    @Field('checkSimilar') bool checkSimilar,
    @Field('processAsync') bool processAsync,
    @Field('scheduledDate') String date,
    @Field('scheduledTime') String time,
  });

  @GET('/scheduled')
  Future<ScheduledWrapper> getScheduled();
}
