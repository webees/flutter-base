import 'package:flutter/material.dart';

import '../home/index.dart';
import '../market/index.dart';
import '../exchange/index.dart';
import '../news/index.dart';
import '../my/index.dart';

part './_bar.dart';

class RootView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      home: Bar(),
    );
  }
}
