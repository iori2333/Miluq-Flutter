import 'package:json_annotation/json_annotation.dart';

part 'user_info.g.dart';

@JsonSerializable()
class UserInfo {
  String nickname;
  String email;
  int age;
  int level;
  String sign;
  String sex;

  UserInfo(
      {required this.nickname,
      required this.email,
      required this.age,
      required this.level,
      required this.sign,
      required this.sex});

  factory UserInfo.fromJson(json) => _$UserInfoFromJson(json);

  Map<String, dynamic> toJson() => _$UserInfoToJson(this);
}
