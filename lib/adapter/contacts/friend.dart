import 'package:json_annotation/json_annotation.dart';
import 'package:miluq/adapter/contacts/contact.dart';

part 'friend.g.dart';

@JsonSerializable()
class Friend implements Contact {
  @override
  int id;
  String nickname;
  String remark;

  Friend({required this.id, required this.nickname, required this.remark});

  factory Friend.fromJson(json) => _$FriendFromJson(json);

  Map<String, dynamic> toJson() => _$FriendToJson(this);
}
