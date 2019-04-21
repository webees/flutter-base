import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<HomeState> buildEffect() {
  return combineEffects(<Object, Effect<HomeState>>{
    HomeAction.plusOne: _onAction,
  });
}

void _onAction(Action action, Context<HomeState> ctx) {}
