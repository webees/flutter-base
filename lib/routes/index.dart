import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import './root_handler.dart';
import './demo_handler.dart';

class Routes {
  static Router router;

  static void define(Router router) {
    router.define('/', handler: rootHandler);
    router.define('/demo', handler: demoHandler);
    router.notFoundHandler = new Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        print("ROUTE WAS NOT FOUND !!!");
      },
    );
    Routes.router = router;
  }
}
