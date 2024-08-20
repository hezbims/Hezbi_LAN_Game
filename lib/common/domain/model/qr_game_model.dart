import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hezbi_lan_game/common/domain/model/my_game_type.dart';

part 'qr_game_model.freezed.dart';
part 'qr_game_model.g.dart';

@freezed
class QrGameModel with _$QrGameModel{
  const QrGameModel._();
  const factory QrGameModel({
    required MyGameType gameType,
    required String gameAddress,
  }) = _QrGameModel;

  factory QrGameModel.fromJson(Map<String, dynamic> json) =>
    _$QrGameModelFromJson(json);

  String asJsonString() => jsonEncode(toJson());
}