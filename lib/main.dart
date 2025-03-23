import 'package:flutter/material.dart';
import 'package:template_project/app/presentation/app.dart';
import 'package:template_project/core/services/injectable_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await serviceLocator();
  runApp(const App());
}
