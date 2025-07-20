// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_game_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QrGameModel _$QrGameModelFromJson(Map<String, dynamic> json) => _QrGameModel(
      gameType: $enumDecode(_$MyGameTypeEnumMap, json['gameType']),
      gameAddress: json['gameAddress'] as String,
    );

Map<String, dynamic> _$QrGameModelToJson(_QrGameModel instance) =>
    <String, dynamic>{
      'gameType': _$MyGameTypeEnumMap[instance.gameType]!,
      'gameAddress': instance.gameAddress,
    };

const _$MyGameTypeEnumMap = {
  MyGameType.ticTacToe: '0',
};
