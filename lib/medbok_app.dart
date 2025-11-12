import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medbok/core/routing/app_router.dart';
import 'package:medbok/core/routing/routes.dart';

class MedBokApp extends StatelessWidget {
  final AppRouter appRouter;

  const MedBokApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'MedBok',
          debugShowCheckedModeBanner: false,

          // 🔹 ربط الراوتر الاحترافي
          onGenerateRoute: appRouter.generateRoute,

          // 🔹 تحديد الشاشة الأولى عند التشغيل
          initialRoute: Routes.onBoarding,

          // 🔹 إعدادات الشكل العام (theme)
          theme: ThemeData(
            useMaterial3: true,
            colorSchemeSeed: Colors.teal,
            scaffoldBackgroundColor: Colors.white,
            fontFamily: 'Poppins',
          ),
        );
      },
    );
  }
}
