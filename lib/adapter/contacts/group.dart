import 'package:miluq/adapter/contacts/contact.dart';

class Group extends Contact {
  String name;
  String permission;

  Group(int id, {required this.name, required this.permission}) : super(id);
}
