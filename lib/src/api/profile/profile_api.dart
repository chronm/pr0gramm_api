import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:pr0gramm_api/src/util/converters.dart';
import 'package:retrofit/retrofit.dart';

import '../../../pr0gramm_api.dart';

part 'profile_api.g.dart';

@RestApi(baseUrl: 'https://pr0gramm.com/api/profile')
abstract class ProfileApi {
  factory ProfileApi(Dio dio, {String baseUrl}) = _ProfileApi;

  @GET('/info')
  Future<Profile> getProfile(@Query('name') String name);

  @GET('/comments/{flags}')
  @DateTimeConverter()
  Future<ProfileCommentWrapper> getComments(@Query('flags') ItemFlags flags, @Query('before') DateTime before, @Query('name') String name);

  @GET('/commentlikes')
  @DateTimeConverter()
  Future<LikedCommentWrapper> getCommentLikes(@Query('flags') ItemFlags flags, @Query('before') DateTime before, @Query('name') String name);

  @POST('/subscribe')
  @FormUrlEncoded()
  Future<Subscribe> subscribeToUser(@Field('name') String name, {@required @Field('_nonce') String nonce});

  @POST('/subscribe')
  @FormUrlEncoded()
  Future<Subscribe> unsubscribeFromUser(@Field('name') String name, {@required @Field('_nonce') String nonce});

  @POST('/follow')
  @FormUrlEncoded()
  Future<Follow> followUser(@Field('name') String name, {@required @Field('_nonce') String nonce});

  @POST('/unfollow')
  @FormUrlEncoded()
  Future<Follow> unfollowUser(@Field('name') String name, {@required @Field('_nonce') String nonce});

  @POST('/block')
  @FormUrlEncoded()
  Future<Block> blockUser(@Field('name') String name, {@required @Field('_nonce') String nonce});

  @POST('/unblock')
  @FormUrlEncoded()
  Future<Block> unblockUser(@Field('name') String name, {@required @Field('_nonce') String nonce});
}
