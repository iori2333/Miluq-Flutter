import 'package:miluq/adapter/contacts/group.dart';
import 'package:miluq/adapter/contacts/contact.dart';

class GroupMember extends Contact {
  String memberName;
  String specialTitle;
  int joinTimestamp;
  int lastSpeakTimestamp;
  int muteTimeRemaining;
  Group group;

  GroupMember(int id,
      {required this.memberName,
      required this.specialTitle,
      required this.joinTimestamp,
      required this.lastSpeakTimestamp,
      required this.muteTimeRemaining,
      required this.group})
      : super(id);
}
