import 'dart:async';

import 'package:flutter/material.dart';
import 'package:openapi_demo_frontend/src/core/app_initializer.dart';
import 'package:openapi_demo_frontend/src/core/application.dart';

void main() {
  final AppInitializer appInitializer = AppInitializer();

  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await appInitializer.preAppRun();

      runApp(Application());

      appInitializer.postAppRun();
    },
    (error, stack) {},
  );
}
