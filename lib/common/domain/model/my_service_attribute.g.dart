// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_service_attribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyServiceAttribute _$MyServiceAttributeFromJson(Map<String, dynamic> json) =>
    MyServiceAttribute(
      gameType: $enumDecode(_$MyGameTypeEnumMap, json['gameType']),
      roomId: json['roomId'] as String,
      roomName: json['roomName'] as String,
      currentPlayer: MyJsonConverterUtils.intToStringConverter
          .fromJson(json['currentPlayer'] as String),
      maxPlayer: MyJsonConverterUtils.intToStringConverter
          .fromJson(json['maxPlayer'] as String),
    );

Map<String, dynamic> _$MyServiceAttributeToJson(MyServiceAttribute instance) =>
    <String, dynamic>{
      'gameType': _$MyGameTypeEnumMap[instance.gameType]!,
      'roomId': instance.roomId,
      'roomName': instance.roomName,
      'currentPlayer': MyJsonConverterUtils.intToStringConverter
          .toJson(instance.currentPlayer),
      'maxPlayer':
          MyJsonConverterUtils.intToStringConverter.toJson(instance.maxPlayer),
    };

const _$MyGameTypeEnumMap = {
  MyGameType.ticTacToe: '0',
};
