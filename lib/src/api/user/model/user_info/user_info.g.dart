// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return UserInfo(
    account: json['account'] == null
        ? null
        : Account.fromJson(json['account'] as Map<String, dynamic>),
    invited: (json['invited'] as List)
        ?.map((e) =>
            e == null ? null : InvitedUser.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    payments: json['payments'] as int,
    invitedDetached: json['invitedDetached'] as int,
  );
}

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
      'account': instance.account,
      'invited': instance.invited,
      'payments': instance.payments,
      'invitedDetached': instance.invitedDetached,
    };
