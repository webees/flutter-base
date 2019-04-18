import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import '../views/root/index.dart';

var rootHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return new RootView();
  },
);
