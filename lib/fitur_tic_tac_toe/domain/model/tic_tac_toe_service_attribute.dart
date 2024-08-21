
import 'package:hezbi_lan_game/common/domain/model/my_service_attribute.dart';
import 'package:hezbi_lan_game/common/domain/model/my_game_type.dart';

class TicTacToeServiceAttribute extends MyServiceAttribute {
  TicTacToeServiceAttribute({
    required super.roomName,
    required super.currentPlayer,
    required super.roomId,
  }) : super(
    gameType: MyGameType.ticTacToe,
    maxPlayer: 2,
  );
}