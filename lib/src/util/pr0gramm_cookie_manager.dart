import 'dart:convert';

import 'package:cookie_jar/src/cookie_jar.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

import '../../pr0gramm_api.dart';

class Pr0grammCookieManager extends CookieManager {
  Pr0grammCookieManager(CookieJar cookieJar) : super(cookieJar);

  Cookie get cookie {
    var rawCookie = cookieJar.loadForRequest(Uri(scheme: 'https', host: 'pr0gramm.com')).firstWhere((cookie) => cookie.name == 'me').value;
    return Cookie.fromJson(jsonDecode(Uri.decodeFull(rawCookie)));
  }

  String get pr0grammNonce => cookie.id.substring(0, 15);

  String get pr0grammId => cookie.id;
}
