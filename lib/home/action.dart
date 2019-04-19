import 'package:fish_redux/fish_redux.dart';

enum HomeAction {
  update,
}

class HomeActionCreator {
  static Action update(int count) {
    return Action(
      HomeAction.update,
      payload: {
        'count': count,
      },
    );
  }
}
