class ItemFlag {
  static const ItemFlag SFW = ItemFlag._(1, 'sfw');
  static const ItemFlag NSFW = ItemFlag._(2, 'nsfw');
  static const ItemFlag NSFL = ItemFlag._(4, 'nsfl');
  static const ItemFlag NSFP = ItemFlag._(8, 'sfw/nsfp');

  const ItemFlag._(this.value, this.stringValue);
  final int value;
  final String stringValue;

  static List<ItemFlag> get values => [ItemFlag.SFW, ItemFlag.NSFW, ItemFlag.NSFL, ItemFlag.NSFP];

  factory ItemFlag.fromJson(int json) => ItemFlag.values.firstWhere((flag) => flag.value == json);

  int toJson() => value;

  String get sfwstatus => stringValue;
}

class ItemFlags {
  List<ItemFlag> flags;

  ItemFlags(this.flags);

  factory ItemFlags.fromJson(int json) {
    var flags = <ItemFlag>[];
    if (json >= 8) {
      flags.add(ItemFlag.NSFP);
      json -= 8;
    }
    if (json >= 4) {
      flags.add(ItemFlag.NSFL);
      json -= 4;
    }
    if (json >= 2) {
      flags.add(ItemFlag.NSFW);
      json -= 2;
    }
    if (json == 1) {
      flags.add(ItemFlag.SFW);
    }

    return ItemFlags(flags);
  }

  int toJson() => flags.map((f) => f.value).reduce((v1, v2) => v1 + v2);
}
