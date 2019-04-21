import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class RoootPage extends Page<HomeState, Map<String, dynamic>> {
  RoootPage()
      : super(
          initState: initState,
          // effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<HomeState>(
            adapter: null,
            slots: <String, Dependent<HomeState>>{},
          ),
        );
}
