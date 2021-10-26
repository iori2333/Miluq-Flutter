import 'package:logger/logger.dart';

void main() {
  final map = {};
  final logger = Logger(printer: PrettyPrinter());
  try {
    int p = map[10];
  } catch (e) {
    logger.i("abc", e);
  }
}
