import 'dart:convert';

/// Converter for pending messages and events
///
/// Each pending event/message is bond to a handler. Every response
/// is converted to a specified type according to the `type` field
/// of the json object.
void convert(dynamic data) {
  Map<String, dynamic>? ret = jsonDecode(data);
  if (ret == null) {
    return;
  }

  switch (ret['type']) {
    default:
      return;
  }
}
