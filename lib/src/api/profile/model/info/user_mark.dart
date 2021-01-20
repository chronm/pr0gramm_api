import 'package:json_annotation/json_annotation.dart';

enum UserMark {
  @JsonValue(0)
  Schwuchtel,
  @JsonValue(1)
  Neuschwuchtel,
  @JsonValue(2)
  Altschwuchtel,
  @JsonValue(3)
  Administrator,
  @JsonValue(4)
  Gebannt,
  @JsonValue(5)
  Moderator,
  @JsonValue(6)
  Fliesentisch,
  @JsonValue(7)
  LebendeLegende,
  @JsonValue(8)
  Wichtel,
  @JsonValue(9)
  EdlerSpender,
  @JsonValue(10)
  Mittelaltschwuchtel,
  @JsonValue(11)
  AltModerator,
  @JsonValue(12)
  Communityhelfer,
  @JsonValue(13)
  SystemBot,
  @JsonValue(14)
  NutzerBot
}
