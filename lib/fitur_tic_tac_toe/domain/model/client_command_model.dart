import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_command_model.freezed.dart';
part 'client_command_model.g.dart';

@freezed
sealed class ClientCommandModel with _$ClientCommandModel {
  const factory ClientCommandModel.markCoordinate({required int row, required int col}) = MarkCoordinate;
  const factory ClientCommandModel.confirmEndGame() = ConfirmEndGame;

  factory ClientCommandModel.fromJson(Map<String, dynamic> json) => _$ClientCommandModelFromJson(json);
}