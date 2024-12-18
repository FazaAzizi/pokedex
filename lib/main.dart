import 'dart:async';

import 'package:pokedex/di/service_locator.dart';
import 'package:pokedex/presentation/my_app.dart';
import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  ChuckerFlutter.showNotification = true;
  WidgetsFlutterBinding.ensureInitialized();
  await setPreferredOrientations();
  await ServiceLocator.configureDependencies();
  runApp(MyApp());
}

Future<void> setPreferredOrientations() {
  return SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]);
}