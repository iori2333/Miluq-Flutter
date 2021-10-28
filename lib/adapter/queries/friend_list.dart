import 'package:json_annotation/json_annotation.dart';
import 'package:miluq/adapter/contacts/friend.dart';

part 'friend_list.g.dart';

@JsonSerializable()
class FriendList {
  int code;
  String msg;
  List<Friend> data;

  FriendList({required this.code, required this.msg, required this.data});

  factory FriendList.fromJson(json) => _$FriendListFromJson(json);

  Map<String, dynamic> toJson() => _$FriendListToJson(this);
}
