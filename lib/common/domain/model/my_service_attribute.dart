import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hezbi_lan_game/common/domain/model/my_game_type.dart';
import 'package:hezbi_lan_game/common/domain/utils/my_json_converter_utils.dart';

part 'my_service_attribute.g.dart';

@JsonSerializable()
class MyServiceAttribute {

  final MyGameType gameType;

  final String roomId;

  final String roomName;

  @MyJsonConverterUtils.intToStringConverter
  final int currentPlayer;

  @MyJsonConverterUtils.intToStringConverter
  final int maxPlayer;

  final String address;

  MyServiceAttribute({
    required this.gameType,
    required this.roomId,
    required this.roomName,
    required this.currentPlayer,
    required this.maxPlayer,
    required this.address,
  });

  factory MyServiceAttribute.fromJson(Map<String, String> json) =>
    _$MyServiceAttributeFromJson(json);

  Map<String, String> toJson() => _$MyServiceAttributeToJson(this).map(
    (key, value) => MapEntry(key, value as String)
  );

  @override
  bool operator ==(Object other) {
    if (other is! MyServiceAttribute){
      return false;
    }
    return other.roomId == roomId;
  }

  @override
  int get hashCode => Object.hash(
    gameType,
    roomId,
    roomName,
    currentPlayer,
    maxPlayer,
  );
}