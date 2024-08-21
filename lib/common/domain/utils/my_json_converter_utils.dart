import 'package:json_annotation/json_annotation.dart';

class MyJsonConverterUtils {
  static const intToStringConverter = IntToStringConverter();
}

class IntToStringConverter implements JsonConverter<int, String> {
  const IntToStringConverter();
  @override
  int fromJson(String json) => int.parse(json);

  @override
  String toJson(int object) => object.toString();
}