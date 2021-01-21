import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../pr0gramm_api.dart';

part 'bookmark_api.g.dart';

@RestApi(baseUrl: 'https://pr0gramm.com/api/bookmarks')
abstract class BookmarkApi {
  factory BookmarkApi(Dio dio, {String baseUrl}) = _BookmarkApi;

  @GET('/get')
  Future<BookmarkWrapper> getBookmarks();
}
