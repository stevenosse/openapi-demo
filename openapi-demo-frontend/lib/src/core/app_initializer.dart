import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:openapi_demo_frontend/src/shared/locator.dart';
import 'package:openapi_demo_frontend/src/shared/services/storage/storage.dart';

class AppInitializer {
  /// Initialize services, plugins, etc. before the app runs.
  Future<void> preAppRun() async {
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    await locator<Storage>().init();
  }

  /// Initialize services, plugins, etc. after the app runs.
  Future<void> postAppRun() async {
    // Hide RSOD in release mode.
    if (kReleaseMode) {
      ErrorWidget.builder = (FlutterErrorDetails details) => const SizedBox();
    }
  }
}
