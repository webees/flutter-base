import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<HomeState> buildReducer() {
  return asReducer(
    <Object, Reducer<HomeState>>{
      HomeAction.plusOne: _plusOneReducer,
    },
  );
}

HomeState _plusOneReducer(HomeState state, Action action) {
  final HomeState newState = state.clone();
  newState.count = newState.count + 1;
  return newState;
}
