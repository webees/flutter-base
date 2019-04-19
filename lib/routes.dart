import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import './views/root/handler.dart';
import './views/home/handler.dart';
import './views/market/handler.dart';
import './views/exchange/handler.dart';
import './views/news/handler.dart';
import './views/my/handler.dart';

class Routes {
  static Router router;

  static void define(Router router) {
    router.define('/', handler: rootHandler);
    router.define('/home', handler: homeHandler);
    router.define('/market', handler: marketHandler);
    router.define('/exchange', handler: exchangeHandler);
    router.define('/news', handler: newsHandler);
    router.define('/my', handler: myHandler);
    router.notFoundHandler = new Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        print("ROUTE WAS NOT FOUND !!!");
      },
    );
    Routes.router = router;
  }
}
