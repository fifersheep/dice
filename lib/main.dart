import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'debug.dart';
import 'presentation/app.dart';

void main() {
  if (kDebugMode) {
    configureAppDebug();
  }
  runApp(App());
}
