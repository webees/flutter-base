import 'package:fish_redux/fish_redux.dart';

enum HomeAction {
  plusOne,
}

class HomeActionCreator {
  static Action plusOne() {
    return Action(HomeAction.plusOne);
  }
}
