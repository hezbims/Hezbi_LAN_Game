import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hezbi_lan_game/common/domain/response_wrapper.dart';

part 'room_master_tic_tac_toe_state.freezed.dart';

@Freezed()
class RoomMasterTicTacToeState with _$RoomMasterTicTacToeState {
  const factory RoomMasterTicTacToeState({
    required ResponseWrapper<String> wsServerUrl,
  }) = _RoomMasterTicTacToeState;
}