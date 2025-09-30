import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quraankareem/core/routing/app_router.dart';
import 'package:quraankareem/core/routing/routes.dart';
import 'package:quraankareem/core/theming/colors.dart';

class QuraanApp extends StatelessWidget {
  final AppRouter appRouter;
  const QuraanApp({super.key , required this.appRouter});

  @override
  Widget build(BuildContext context) {
  return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: MaterialApp(
          title: 'Quraan Kareem',
          theme: ThemeData(
            primaryColor: ColorsManager.mainBlue,
            scaffoldBackgroundColor: Colors.white,
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.HomeScreen,
          onGenerateRoute: appRouter.generateRoute,
        ));
  }
}
