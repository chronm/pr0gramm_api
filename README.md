# pr0gramm_api

## Installation

```yaml
dependencies:
  pr0gramm_api:
    git:
      url: https://github.com/chronm/pr0gramm_api.git
```

## Usage

A simple usage example, login with your username, password and captcha:

```dart
void main() async {
  var cookieManager = Pr0grammCookieManager(DefaultCookieJar());
  var dio = Dio()..interceptors.add(cookieManager);
  var pr0gramm = Pr0gramm(dio);
  pr0gramm.login('username', 'password', 'captcha_token', 'captcha_response');
}
```

Now you can go ahead and do some stuff. You can find all available actions in the `Pr0gramm` class