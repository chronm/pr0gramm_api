import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:pr0gramm_api/pr0gramm_api.dart';
import 'package:pr0gramm_api/src/util/pr0gramm_cookie_manager.dart';

void main() async {
  var cookieManager = Pr0grammCookieManager(DefaultCookieJar());
  var dio = Dio()..interceptors.add(cookieManager);
  var pr0gramm = Pr0gramm(dio);
}
