import 'package:miluq/adapter/messages/message.dart';

class Poke extends Message {
  String name;

  Poke({required this.name}) : super('Poke');
}
