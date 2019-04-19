import 'package:flutter/material.dart';

import 'package:fish_redux/fish_redux.dart';

import 'home/page.dart';

Widget createApp() {
  final AbstractRoutes routes = HybridRoutes(routes: <AbstractRoutes>[
    PageRoutes(
      pages: <String, Page<Object, dynamic>>{
        'home': RoootPage(),
      },
    ),
  ]);

  return MaterialApp(
    title: 'flutter_base',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: routes.buildPage('home', null),
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}
