import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import 'routes/index.dart';

/// 入口
void main() {
  /// 初始化并配置路由
  final router = new Router();
  Routes.define(router);
  runApp(MaterialApp(onGenerateRoute: Routes.router.generator));
}
