import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import '../views/demo/index.dart';

var demoHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return new DemoView();
  },
);
