import 'package:flutter/material.dart';
import 'package:flutter_doctors/core/di/dependecy_injection.dart';
import 'package:flutter_doctors/core/routing/app_router.dart';
import 'package:flutter_doctors/doc_app.dart';

void main() {
  setupGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
