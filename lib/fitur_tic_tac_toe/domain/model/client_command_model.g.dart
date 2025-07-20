// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_command_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarkCoordinate _$MarkCoordinateFromJson(Map<String, dynamic> json) =>
    MarkCoordinate(
      row: (json['row'] as num).toInt(),
      col: (json['col'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$MarkCoordinateToJson(MarkCoordinate instance) =>
    <String, dynamic>{
      'row': instance.row,
      'col': instance.col,
      'runtimeType': instance.$type,
    };

ConfirmEndGame _$ConfirmEndGameFromJson(Map<String, dynamic> json) =>
    ConfirmEndGame(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ConfirmEndGameToJson(ConfirmEndGame instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

ClientQuitGame _$ClientQuitGameFromJson(Map<String, dynamic> json) =>
    ClientQuitGame(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ClientQuitGameToJson(ClientQuitGame instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
