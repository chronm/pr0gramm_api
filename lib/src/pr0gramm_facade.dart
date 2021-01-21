import 'package:dio/dio.dart';
import 'package:pr0gramm_api/src/util/pr0gramm_cookie_manager.dart';

import '../pr0gramm_api.dart';
import 'api/comments/comments_api.dart';
import 'api/contact/contact_api.dart';
import 'api/faq/faq_api.dart';
import 'api/inbox/inbox_api.dart';
import 'api/items/items_api.dart';
import 'api/media/media_api.dart';
import 'api/profile/profile_api.dart';
import 'api/tags/tags_api.dart';
import 'api/user/user_api.dart';

class Pr0gramm implements CommentsApi, ContactApi, InboxApi, ItemsApi, ProfileApi, TagsApi, UserApi, FaqApi, ThumbApi, ImageApi, VideoApi, BadgeApi {
  final ProfileApi _profileApi;
  final UserApi _userApi;
  final ItemsApi _itemsApi;
  final TagsApi _tagsApi;
  final CommentsApi _commentsApi;
  final ContactApi _contactApi;
  final InboxApi _inboxApi;
  final FaqApi _faqApi;
  final ThumbApi _thumbApi;
  final ImageApi _imageApi;
  final VideoApi _videoApi;
  final BadgeApi _badgeApi;
  final Pr0grammCookieManager _pr0grammCookieManager;

  Pr0gramm(Dio dio)
      : _profileApi = ProfileApi(dio),
        _userApi = UserApi(dio),
        _itemsApi = ItemsApi(dio),
        _tagsApi = TagsApi(dio),
        _commentsApi = CommentsApi(dio),
        _contactApi = ContactApi(dio),
        _inboxApi = InboxApi(dio),
        _faqApi = FaqApi(dio),
        _thumbApi = ThumbApi(dio),
        _imageApi = ImageApi(dio),
        _videoApi = VideoApi(dio),
        _badgeApi = BadgeApi(dio),
        _pr0grammCookieManager = dio.interceptors.firstWhere((interceptor) => interceptor is Pr0grammCookieManager);

  /// Get a captcha
  ///
  /// The returned captcha contains a token that has to be used then logging in
  /// and the captcha as a base64 encoded png image
  @override
  Future<Captcha> getCaptcha() => _userApi.getCaptcha();

  /// Get information about the logged in user
  @override
  Future<UserInfo> getUserInfo() => _userApi.getUserInfo();

  /// Login with username, password, token and captcha
  @override
  Future<Login> login(String username, String password, String token, String captcha) => _userApi.login(username, password, token, captcha);

  /// Sync with the server
  ///
  /// Get information about new comments, mentions, messages, notifications and
  /// follows
  @override
  Future<Sync> sync(int offset) => _userApi.sync(offset);

  /// Logout from pr0gramm
  ///
  /// Uses [_pr0grammCookieManager] to get [nonce] and [id].
  /// You can provide [nonce] and [id] directly, but it is not recommended.
  @override
  Future<Logout> logout({String nonce, String id}) => _userApi.logout(id: id ?? _pr0grammCookieManager.pr0grammId, nonce: nonce ?? _pr0grammCookieManager.pr0grammNonce);

  /// Check if user is still logged in
  @override
  Future<LoggedIn> loggedIn() => _userApi.loggedIn();

  /// Change password from [currentPassword] to [password]
  ///
  /// Uses [_pr0grammCookieManager] to get [nonce].
  /// You can provide [nonce] directly, but it is not recommended.
  @override
  Future<UserInfo> changePassword(String currentPassword, String password, {String nonce}) => _userApi.changePassword(currentPassword, password, nonce: nonce ?? _pr0grammCookieManager.pr0grammNonce);

  /// Change email to [email]
  ///
  /// You need to provide your password as an extra authentication step.
  ///
  /// Uses [_pr0grammCookieManager] to get [nonce].
  /// You can provide [nonce] directly, but it is not recommended.
  @override
  Future<UserInfo> requestEmailChange(String currentPassword, String email, {String nonce}) =>
      _userApi.requestEmailChange(currentPassword, email, nonce: nonce ?? _pr0grammCookieManager.pr0grammNonce);

  /// Update site settings
  ///
  /// Update if your [likesArePublic], you want to update favorites
  /// ([favUpvode]), [showAds], what is your current [theme] and if you want to
  /// show that you are a supporter of pr0gramm ([userStatus]).
  ///
  /// Uses [_pr0grammCookieManager] to get [nonce].
  /// You can provide [nonce] directly, but it is not recommended.
  @override
  Future<UserInfo> changeSiteSettings(bool likesArePublic, bool favUpvote, bool showAds, UserStatus userStatus, Pr0grammTheme theme, {String nonce}) =>
      _userApi.changeSiteSettings(likesArePublic, favUpvote, showAds, userStatus, theme, nonce: nonce ?? _pr0grammCookieManager.pr0grammNonce);

  /// Update site security
  ///
  /// Update if you want to get notified if a new devices logs in
  /// ([deviceMail]).
  ///
  /// Uses [_pr0grammCookieManager] to get [nonce].
  /// You can provide [nonce] directly, but it is not recommended.
  @override
  Future<UserInfo> changeSiteSecurity(bool deviceMail, {String nonce}) => _userApi.changeSiteSecurity(deviceMail, nonce: nonce ?? _pr0grammCookieManager.pr0grammNonce);

  /// Get users
  @override
  Future<FollowUserWrapper> getFollowedUsers(ItemFlags flags) => _userApi.getFollowedUsers(flags);

  /// Get profile of a user
  @override
  Future<Profile> getProfile(String name) => _profileApi.getProfile(name);

  /// Get all Comments
  ///
  /// Filter comments by [flags], [before], and user[name].
  @override
  Future<ProfileCommentWrapper> getComments(ItemFlags flags, DateTime before, String name) => _profileApi.getComments(flags, before, name);

  /// Get liked comments
  ///
  /// Filter liked comments by [flags], [before] and user[name].
  @override
  Future<LikedCommentWrapper> getCommentLikes(ItemFlags flags, DateTime before, String name) => _profileApi.getCommentLikes(flags, before, name);

  /// Subscribe to a user
  ///
  /// Manage if you want to get notifications when [user] uploads an item.
  ///
  /// Uses [_pr0grammCookieManager] to get [nonce].
  /// You can provide [nonce] directly, but it is not recommended.
  @override
  Future<Subscribe> subscribeToUser(String name, {String nonce}) => _profileApi.subscribeToUser(name, nonce: nonce ?? _pr0grammCookieManager.pr0grammNonce);

  /// Unsubscribe from a user
  ///
  /// Manage if you want to get notifications when [user] uploads an item.
  ///
  /// Uses [_pr0grammCookieManager] to get [nonce].
  /// You can provide [nonce] directly, but it is not recommenden.
  @override
  Future<Subscribe> unsubscribeFromUser(String name, {String nonce}) => _profileApi.unsubscribeFromUser(name, nonce: nonce ?? _pr0grammCookieManager.pr0grammNonce);

  /// Follow a user
  ///
  /// Uses [_pr0grammCookieManager] to get [nonce].
  /// You can provide [nonce] directly, but it is not recommended.
  @override
  Future<Follow> followUser(String name, {String nonce}) => _profileApi.followUser(name, nonce: nonce ?? _pr0grammCookieManager.pr0grammNonce);

  /// Unfollow a user
  ///
  /// Uses [_pr0grammCookieManager] to get [nonce].
  /// You can provide [nonce] directly, but it is not recommended.
  @override
  Future<Follow> unfollowUser(String name, {String nonce}) => _profileApi.unfollowUser(name, nonce: nonce ?? _pr0grammCookieManager.pr0grammNonce);

  /// Block a user
  ///
  /// Uses [_pr0grammCookieManager] to get [nonce].
  /// You can provide [nonce] directly, but it is not recommended.
  @override
  Future<Block> blockUser(String name, {String nonce}) => _profileApi.blockUser(name, nonce: nonce ?? _pr0grammCookieManager.pr0grammNonce);

  /// Unblock a user
  ///
  /// Uses [_pr0grammCookieManager] to get [nonce].
  /// You can provide [nonce] directly, but it is not recommended.
  @override
  Future<Block> unblockUser(String name, {String nonce}) => _profileApi.unblockUser(name, nonce: nonce ?? _pr0grammCookieManager.pr0grammNonce);

  /// Get uploads
  ///
  /// You can search for uploads near [id] but it can be replaced with [older].
  /// [promoted] can be omitted if you want new posts.
  /// [self] can be omitted if you specify [user].
  /// Select the [collection] of a [user].
  ///
  /// Filter by [id] (seems to be deprecated or can be replaces with [older]),
  /// [older], [flags], [promoted], [user], your own ([self], can be omitted
  /// if you specify [user]), [likes] (not sure what this does), [following]
  /// (not sure what this does), [tags] and the [collection] of a user.
  @override
  Future<ItemWrapper> getItems({int id, DateTime older, ItemFlags flags, bool promoted = false, String user, String likes, bool self, bool following, String tags, String collection}) {
    if (collection != null) assert(user != null);
    return _itemsApi.getItems(id: id, older: older, flags: flags, promoted: promoted, user: user, likes: likes, self: self, following: following, tags: tags, collection: collection);
  }

  /// Get information about an upload
  @override
  Future<ItemInfo> getItemInfo(int id) => _itemsApi.getItemInfo(id);

  /// Vote for an upload
  ///
  /// Uses [_pr0grammCookieManager] to get [nonce].
  /// You can provide [nonce] directly, but it is not recommended.
  @override
  Future<void> voteItem(int id, Vote vote, {String nonce}) => _itemsApi.voteItem(id, vote, nonce: nonce ?? _pr0grammCookieManager.pr0grammNonce);

  /// Check for rate limit
  ///
  /// Might throw exception if rate limit.
  @override
  Future<void> ratelimit() => _itemsApi.ratelimit();

  /// Upload a file using FormData directly
  ///
  /// You can also upload with only a filePath [upload()].
  @override
  Future<Uploaded> uploadWithFormData(FormData formData) => _itemsApi.uploadWithFormData(formData);

  /// Upload a file providing only its filePath
  ///
  /// You can also build the FormData by yourself and use [uploadWithFormData()].
  Future<Uploaded> upload(String filePath) =>
      _itemsApi.uploadWithFormData(FormData.fromMap({'image': MultipartFile.fromFileSync(filePath, filename: filePath, contentType: MediaType.fromFilePath(filePath).convert())}));

  /// Post an item
  ///
  /// Post the previously [upload()]ed item to the board.
  /// [tags] needs to be a comma separated list of tags.
  /// [date] is the scheduled date in the form of yyyy-mm-dd.
  /// [time] is the scheduled time in the form of hh-mm.
  /// You can provide an initial [comment]
  /// No idea what [checkSimilar] and [processAsync] behaves.
  ///
  /// Uses [_pr0grammCookieManager] to get [nonce].
  /// You can provide [nonce] directly, but it is not recommended.
  @override
  Future<Posted> post(String imageUrl, ItemFlag sfwstatus, String tags, String comment, String key, {String nonce, bool checkSimilar = true, bool processAsync = true, String date, String time}) =>
      _itemsApi.post(imageUrl, sfwstatus, tags, comment, key, processAsync: processAsync, checkSimilar: checkSimilar, nonce: nonce ?? _pr0grammCookieManager.pr0grammNonce, date: date, time: time);

  /// Post an item using DateTime for scheduling
  ///
  /// Post the previously [upload()]ed item to the board.
  /// [tags] needs to be a comma separated list of tags.
  /// You can provide an initial [comment]
  /// No idea what [checkSimilar] and [processAsync] behaves.
  ///
  /// Uses [_pr0grammCookieManager] to get [nonce].
  /// You can provide [nonce] directly, but it is not recommended.
  Future<Posted> postWithScheduledDateTime(String imageUrl, ItemFlag sfwstatus, String tags, String comment, String key,
          {String nonce, bool checkSimilar = true, bool processAsync = true, DateTime scheduled}) =>
      _itemsApi.post(imageUrl, sfwstatus, tags, comment, key,
          processAsync: processAsync,
          checkSimilar: checkSimilar,
          date: '${scheduled.year}-${scheduled.month}-${scheduled.day}',
          time: '${scheduled.hour}:${scheduled.minute}',
          nonce: nonce ?? _pr0grammCookieManager.pr0grammNonce);

  /// Combine uploading and posting
  ///
  /// See [postWithScheduledDateTime()] and [upload()]
  Future<Posted> uploadAndPost(
    String filePath,
    ItemFlag sfwstatus,
    String tags,
    String comment,
    String key, {
    String nonce,
    bool checkSimilar,
    bool processAsync,
    DateTime scheduled,
  }) async {
    final uploaded = await upload(filePath);
    return postWithScheduledDateTime(null, sfwstatus, tags, comment, uploaded.key,
        checkSimilar: checkSimilar, processAsync: processAsync, scheduled: scheduled, nonce: nonce ?? _pr0grammCookieManager.pr0grammNonce);
  }

  /// Post with a url
  ///
  /// See [postWithScheduledDateTime()] and [upload()]
  Future<Posted> postWithUrl(
    String imageUrl,
    String filePath,
    ItemFlag sfwstatus,
    String tags,
    String comment, {
    String nonce,
    bool checkSimilar,
    bool processAsync,
    DateTime scheduled,
  }) =>
      postWithScheduledDateTime(imageUrl, sfwstatus, tags, comment, null,
          checkSimilar: checkSimilar, processAsync: processAsync, scheduled: scheduled, nonce: nonce ?? _pr0grammCookieManager.pr0grammNonce);

  /// Get a list of scheduled posts
  @override
  Future<ScheduledWrapper> getScheduled() => _itemsApi.getScheduled();

  /// Add a tag to upload
  ///
  /// [tags] is a comma-separated list of tags that are assigned to [itemId].
  ///
  /// Uses [_pr0grammCookieManager] to get [nonce].
  /// You can provide [nonce] directly, but it is not recommended.
  @override
  Future<AddedTags> addTag(String tags, int itemId, {String nonce}) => _tagsApi.addTag(tags, itemId, nonce: nonce ?? _pr0grammCookieManager.pr0grammNonce);

  /// Vote for a comment
  ///
  /// Uses [_pr0grammCookieManager] to get [nonce].
  /// You can provide [nonce] directly, but it is not recommended.
  @override
  Future<void> voteComment(int id, Vote vote, {String nonce}) => _commentsApi.voteComment(id, vote, nonce: nonce ?? _pr0grammCookieManager.pr0grammNonce);

  /// Add a comment
  ///
  /// If you do not provide a [parentId], this comment will be put as a
  /// "top-level" comment.
  ///
  /// Uses [_pr0grammCookieManager] to get [nonce].
  /// You can provide [nonce] directly, but it is not recommended.
  @override
  Future<void> postComment(String comment, int itemId, {String nonce, int parentId = 0}) =>
      _commentsApi.postComment(comment, itemId, parentId: parentId, nonce: nonce ?? _pr0grammCookieManager.pr0grammNonce);

  /// Mark a comment as favorite
  ///
  /// Uses [_pr0grammCookieManager] to get [nonce].
  /// You can provide [nonce] directly, but it is not recommended.
  @override
  Future<void> favComment(int id, {String nonce}) => _commentsApi.favComment(id, nonce: nonce ?? _pr0grammCookieManager.pr0grammNonce);

  /// Unmark a comment as favorite
  ///
  /// Uses [_pr0grammCookieManager] to get [nonce].
  /// You can provide [nonce] directly, but it is not recommended.
  @override
  Future<void> unfavComment(int id, {String nonce}) => _commentsApi.favComment(id, nonce: nonce ?? _pr0grammCookieManager.pr0grammNonce);

  /// Report something
  ///
  /// Use either one predefined [reason] or use a [customReason].
  /// You can report a user, comment or item.
  ///
  /// Uses [_pr0grammCookieManager] to get [nonce].
  /// You can provide [nonce] directly, but it is not recommended.
  @override
  Future<void> report(String reason, String customReason, {String nonce, int userId, int commentId, int itemId}) =>
      _contactApi.report(reason, customReason, nonce: nonce ?? _pr0grammCookieManager.pr0grammNonce, userId: userId, commentId: commentId, itemId: itemId);

  /// Send a message
  ///
  /// Uses [_pr0grammCookieManager] to get [nonce].
  /// You can provide [nonce] directly, but it is not recommended.
  @override
  Future<void> send(String email, String subject, String message) => _contactApi.send(email, subject, message);

  /// Get your whole inbox
  @override
  Future<MessageWrapper> getAllInbox({DateTime older}) => _inboxApi.getAllInbox(older: older);

  /// Get only comments
  @override
  Future<MessageWrapper> getInboxComments() => _inboxApi.getInboxComments();

  /// Get only system notifications
  @override
  Future<MessageWrapper> getInboxNotifications() => _inboxApi.getInboxNotifications();

  /// Get only private conversations
  @override
  Future<ConversationWrapper> getInboxConversations() => _inboxApi.getInboxConversations();

  /// Get messages with a user
  @override
  Future<MessageWith> getInboxMessagesWith(String name) => _inboxApi.getInboxMessagesWith(name);

  /// Send a message to a user
  ///
  /// Uses [_pr0grammCookieManager] to get [nonce].
  /// You can provide [nonce] directly, but it is not recommended.
  @override
  Future<void> sendMessage(String name, String comment, {String nonce}) => _inboxApi.sendMessage(name, comment, nonce: nonce ?? _pr0grammCookieManager.pr0grammNonce);

  /// Get messages from users you follow
  @override
  Future<MessageWrapper> getFollows() => _inboxApi.getFollows();

  /// Get blocked users
  @override
  Future<BlockedUserWrapper> getBlockedUsers() => _inboxApi.getBlockedUsers();

  /// Get a list of suggested tags
  @override
  Future<SuggestedTags> getTags() => _tagsApi.getTags();

  /// Vote for tag
  /// Uses [_pr0grammCookieManager] to get [nonce].
  /// You can provide [nonce] directly, but it is not recommended.
  @override
  Future<void> voteTag(int id, int vote, {String nonce}) => _tagsApi.voteTag(id, vote, nonce: nonce ?? _pr0grammCookieManager.pr0grammNonce);

  /// Get a list of possible ban reasons
  @override
  Future<BanReasonWrapper> getBanReasons(BanReasonType type) => _faqApi.getBanReasons(type);

  /// Load a thumb from [urlPath] and save it to [savePath]
  @override
  Future<void> loadThumb(String urlPath, String savePath) => _thumbApi.loadThumb(urlPath, savePath);

  /// Load an image from [urlPath] and save it to [savePath]
  @override
  Future<void> loadImage(String urlPath, String savePath) => _imageApi.loadImage(urlPath, savePath);

  /// Load a video from [urlPath] and save it to [savePath]
  @override
  Future<void> loadVideo(String urlPath, String savePath) => _videoApi.loadVideo(urlPath, savePath);

  /// Load a badge from [urlPath] and save it to [savePath]
  @override
  Future<void> loadBadge(String urlPath, String savePath) => _badgeApi.loadBadge(urlPath, savePath);
}
