import 'package:json_annotation/json_annotation.dart';
import 'package:miluq/adapter/contacts/group.dart';

part 'group_list.g.dart';

@JsonSerializable()
class GroupList {
  int code;
  String msg;
  List<Group> data;

  GroupList({required this.code, required this.msg, required this.data});

  factory GroupList.fromJson(json) => _$GroupListFromJson(json);

  Map<String, dynamic> toJson() => _$GroupListToJson(this);
}
