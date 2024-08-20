// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_game_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QrGameModelImpl _$$QrGameModelImplFromJson(Map<String, dynamic> json) =>
    _$QrGameModelImpl(
      gameType: $enumDecode(_$MyGameTypeEnumMap, json['gameType']),
      gameAddress: json['gameAddress'] as String,
    );

Map<String, dynamic> _$$QrGameModelImplToJson(_$QrGameModelImpl instance) =>
    <String, dynamic>{
      'gameType': _$MyGameTypeEnumMap[instance.gameType]!,
      'gameAddress': instance.gameAddress,
    };

const _$MyGameTypeEnumMap = {
  MyGameType.ticTacToe: 0,
};
