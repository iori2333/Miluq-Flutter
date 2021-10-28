import 'package:json_annotation/json_annotation.dart';
import 'package:miluq/adapter/contacts/member.dart';

part 'member_list.g.dart';

@JsonSerializable()
class MemberList {
  int code;
  String msg;
  List<GroupMember> data;

  MemberList({required this.code, required this.msg, required this.data});

  factory MemberList.fromJson(json) => _$MemberListFromJson(json);

  Map<String, dynamic> toJson() => _$MemberListToJson(this);
}
