import 'package:flutter/material.dart';

import './_bar.dart';

class RootView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      home: Bar(),
    );
  }
}
