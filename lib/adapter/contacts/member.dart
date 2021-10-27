import 'package:json_annotation/json_annotation.dart';
import 'package:miluq/adapter/contacts/group.dart';
import 'package:miluq/adapter/contacts/contact.dart';

part 'member.g.dart';

@JsonSerializable()
class GroupMember implements Contact {
  @override
  int id;
  String memberName;
  String specialTitle;
  int joinTimestamp;
  int lastSpeakTimestamp;
  int muteTimeRemaining;
  Group group;

  GroupMember(
      {required this.id,
      required this.memberName,
      required this.specialTitle,
      required this.joinTimestamp,
      required this.lastSpeakTimestamp,
      required this.muteTimeRemaining,
      required this.group});

  factory GroupMember.fromJson(json) => _$GroupMemberFromJson(json);

  Map<String, dynamic> toJson() => _$GroupMemberToJson(this);
}
