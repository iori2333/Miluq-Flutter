import 'package:miluq/adapter/messages/message.dart';

class Dice extends Message {
  int value;

  Dice({required this.value}) : super('Dice');
}
