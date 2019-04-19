import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<HomeState> buildReducer() {
  return asReducer(
    <Object, Reducer<HomeState>>{
      HomeAction.update: _updateReducer,
    },
  );
}

HomeState _updateReducer(HomeState state, Action action) {
  final Map payload = action.payload ?? {}; //获取action附带的数据
  final HomeState newState = state.clone();
  newState.count = payload['count'] ?? newState.count;
  return newState;
}
