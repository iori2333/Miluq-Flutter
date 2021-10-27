import 'package:miluq/adapter/contacts/contact.dart';

class Friend extends Contact {
  String nickname;
  String remark;

  Friend(int id, {required this.nickname, required this.remark}) : super(id);
}
