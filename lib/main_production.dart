import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quraankareem/core/di/dependency_injection.dart';
import 'package:quraankareem/core/routing/app_router.dart';
import 'package:quraankareem/quraan_app.dart';

void main() async {
  setupGetIt();
  // To fix text being hidden bug in flutter_screenutil in release mode
  await ScreenUtil.ensureScreenSize();
  runApp(QuraanApp(appRouter: AppRouter()));
}
