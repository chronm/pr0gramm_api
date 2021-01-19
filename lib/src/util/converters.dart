import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';

import '../../pr0gramm_api.dart';

class DateTimeConverter implements JsonConverter<DateTime, int>, RequestConverter<DateTime, int> {
  const DateTimeConverter();

  @override
  DateTime fromJson(int int) => DateTime.fromMillisecondsSinceEpoch(int);

  @override
  int toJson(DateTime object) => object?.millisecondsSinceEpoch;

  @override
  int convert(DateTime object) => toJson(object);
}

class BoolConverter implements JsonConverter<bool, int>, RequestConverter<bool, int> {
  const BoolConverter();

  @override
  bool fromJson(int json) => json == 0 ? false : true;

  @override
  int toJson(bool object) => object ? 1 : 0;

  @override
  int convert(bool object) => toJson(object);
}

class BanReasonTypeConverter implements RequestConverter<BanReasonType, int> {
  const BanReasonTypeConverter();

  @override
  int convert(BanReasonType object) => object.value;
}


class ItemFlagConverter implements RequestConverter<ItemFlag, String> {
  const ItemFlagConverter();

  @override
  String convert(ItemFlag object) => object.stringValue;
}