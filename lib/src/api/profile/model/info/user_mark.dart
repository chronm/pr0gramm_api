import 'dart:ui';

import 'package:json_annotation/json_annotation.dart';

enum UserMark {
@JsonValue(0)
Schwuchtel,@JsonValue(1)
Neuschwuchtel,@JsonValue(2)
Altschwuchtel,@JsonValue(3)
Administrator,@JsonValue(4)
Gebannt,@JsonValue(5)
Moderator,@JsonValue(6)
Fliesentisch,@JsonValue(7)
LebendeLegende,@JsonValue(8)
Wichtel,@JsonValue(9)
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
  NutzerBot,
  @JsonValue(15)
  AltHelfer
}

Map<UserMark, Color> colorForUserMark = {
  UserMark.Schwuchtel: Color(0xFFFFFFFF),
  UserMark.Neuschwuchtel: Color(0xFFE108E9),
  UserMark.Altschwuchtel: Color(0xFF5BB91C),
  UserMark.Administrator: Color(0xFFFF9900),
  UserMark.Gebannt: Color(0xFF444444),
  UserMark.Moderator: Color(0xFF008FFF),
  UserMark.Fliesentisch: Color(0xFF6C432B),
  UserMark.LebendeLegende: Color(0xFF1CB992),
  UserMark.Wichtel: Color(0xFF1CB992),
  UserMark.EdlerSpender: Color(0xFF1CB992),
  UserMark.Mittelaltschwuchtel: Color(0xFFADDC8D),
  UserMark.AltModerator: Color(0xFF7FC7FF),
  UserMark.Communityhelfer: Color(0xFFC52B2F),
  UserMark.SystemBot: Color(0xFFFFC166),
  UserMark.NutzerBot: Color(0xFF10366F),
  UserMark.AltHelfer: Color(0xFFEA9fA1)
};
