import 'package:hezbi_lan_game/common/domain/model/my_game_type.dart';
import 'package:hezbi_lan_game/common/presentation/routes/my_routes.dart';

abstract class RoutingUtils {
  static String getRouteBasedOnGameType(MyGameType gameType){
    return switch(gameType){
      MyGameType.ticTacToe => MyRoutes.ticTacToeClientGameplay,
    };
  }
}