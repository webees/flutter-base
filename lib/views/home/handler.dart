import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import './index.dart';

var homeHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return new HomeView();
  },
);