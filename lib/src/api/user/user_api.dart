import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:pr0gramm_api/src/util/converters.dart';
import 'package:retrofit/retrofit.dart';

import '../../../pr0gramm_api.dart';

part 'user_api.g.dart';

@RestApi(baseUrl: 'https://pr0gramm.com/api/user')
abstract class UserApi {
  factory UserApi(Dio dio, {String baseUrl}) = _UserApi;

  @GET('/captcha')
  Future<Captcha> getCaptcha();

  @GET('/info')
  Future<UserInfo> getUserInfo();

  @POST('/login')
  @FormUrlEncoded()
  Future<Login> login(@Field('name') String username, @Field('password') String password, @Field('token') String token, @Field('captcha') String captcha);

  @GET('/sync')
  Future<Sync> sync(@Query('offset') int offset);

  @POST('/logout')
  @FormUrlEncoded()
  Future<Logout> logout({@required @Field('_nonce') String nonce, @required @Field('id') String id});

  @GET('/loggedin')
  Future<LoggedIn> loggedIn();

  @POST('/changepassword')
  @FormUrlEncoded()
  Future<UserInfo> changePassword(@Field('currentPassword') String currentPassword, @Field('password') String password, {@required @Field('_nonce') String nonce});

  @POST('/requestemailchange')
  @FormUrlEncoded()
  Future<UserInfo> requestEmailChange(@Field('currentPassword') String currentPassword, @Field('email') String email, {@Field('_nonce') String nonce});

  @POST('/sitesettings')
  @FormUrlEncoded()
  @BoolConverter()
  Future<UserInfo> changeSiteSettings(
      @Field('likesArePublic') bool likesArePublic, @Field('favUpvote') bool favUpvote, @Field('showAds') bool showAds, @Field('userStatus') UserStatus userStatus, @Field('theme') Pr0grammTheme theme,
      {@Field('_nonce') String nonce});

  @POST('/changesecurity')
  @FormUrlEncoded()
  @BoolConverter()
  Future<UserInfo> changeSiteSecurity(@Field('deviceMail') bool deviceMail, {@required @Field('_nonce') String nonce});

  @GET('/followlist')
  Future<FollowUserWrapper> getFollowedUsers(@Query('flags') ItemFlags flags);
}
