// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_command_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarkCoordinateImpl _$$MarkCoordinateImplFromJson(Map<String, dynamic> json) =>
    _$MarkCoordinateImpl(
      row: (json['row'] as num).toInt(),
      col: (json['col'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MarkCoordinateImplToJson(
        _$MarkCoordinateImpl instance) =>
    <String, dynamic>{
      'row': instance.row,
      'col': instance.col,
      'runtimeType': instance.$type,
    };

_$ConfirmEndGameImpl _$$ConfirmEndGameImplFromJson(Map<String, dynamic> json) =>
    _$ConfirmEndGameImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ConfirmEndGameImplToJson(
        _$ConfirmEndGameImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
