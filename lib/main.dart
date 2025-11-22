import 'package:flutter/material.dart';
import 'package:medbok/core/di/dependency_injection.dart';
import 'package:medbok/core/routing/app_router.dart';
import 'package:medbok/medbok_app.dart';

void main() {
  setUpGetIt();
  runApp(MedBokApp(appRouter: AppRouter()));
}
