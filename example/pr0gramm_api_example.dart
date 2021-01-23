import 'dart:convert';

import 'package:pr0gramm_api/pr0gramm_api.dart';

void main() async {
  // var cookieManager = Pr0grammCookieManager(DefaultCookieJar());
  // var dio = Dio()..interceptors.add(cookieManager);
  // var pr0gramm = Pr0gramm(dio);
  // await pr0gramm.getCaptcha();

  Sync.fromJson(jsonDecode('{"log": "3K0GAAzcrQYADg=="}'));
}
