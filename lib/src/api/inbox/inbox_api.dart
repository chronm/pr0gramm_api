import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:pr0gramm_api/src/util/converters.dart';
import 'package:retrofit/http.dart';

import '../../../pr0gramm_api.dart';

part 'inbox_api.g.dart';

@RestApi(baseUrl: 'https://pr0gramm.com/api/inbox')
abstract class InboxApi {
  factory InboxApi(Dio dio, {String baseUrl}) = _InboxApi;

  @GET('/all')
  @DateTimeConverter()
  Future<MessageWrapper> getAllInbox({@Query('older') DateTime older});

  @GET('/comments')
  Future<MessageWrapper> getInboxComments();

  @GET('/notifications')
  Future<MessageWrapper> getInboxNotifications();

  @GET('/conversations')
  Future<ConversationWrapper> getInboxConversations();

  @GET('/messages')
  Future<MessageWith> getInboxMessagesWith(@Query('with') String name);

  @POST('/post')
  @FormUrlEncoded()
  Future<void> sendMessage(@Field('recipientName') String name, @Field('comment') String comment, {@required @Field('_nonce') String nonce});

  @GET('/follows')
  Future<MessageWrapper> getFollows();

  @GET('/blocklist')
  Future<BlockedUserWrapper> getBlockedUsers();
}
