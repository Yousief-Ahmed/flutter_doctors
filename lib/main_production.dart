import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_doctors/core/di/dependecy_injection.dart';
import 'package:flutter_doctors/core/routing/app_router.dart';
import 'package:flutter_doctors/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  setupGetIt();
  // To fix text being hidden in screen_util package when using --release
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
