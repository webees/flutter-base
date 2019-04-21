import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(HomeState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: Center(
      child: Text(state.count.toString()),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        dispatch(
          HomeActionCreator.plusOne(),
        );
      },
      child: Icon(Icons.plus_one),
    ),
  );
}
