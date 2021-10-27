import 'package:json_annotation/json_annotation.dart';
import 'package:miluq/adapter/contacts/contact.dart';

part 'group.g.dart';

@JsonSerializable()
class Group implements Contact {
  @override
  int id;
  String name;
  String permission;

  Group({required this.id, required this.name, required this.permission});

  factory Group.fromJson(json) => _$GroupFromJson(json);

  Map<String, dynamic> toJson() => _$GroupToJson(this);
}
