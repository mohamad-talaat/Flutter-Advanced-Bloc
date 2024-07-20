import 'package:flutter/material.dart';
import 'package:flutter_advanced_omar_ahmed/core/routing/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

 import 'core/routing/routes.dart';

class DocApp extends StatelessWidget {
final  AppRouter appRouter;  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
   
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Doc App",
          //  theme: ThemeData(
          //   primarySwatch: Colors.blue,
          //   textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          // ),

          initialRoute: Routes.onBoardingScreen,
          onGenerateRoute: appRouter.generateRoute,
        );
      },
    );
  }
}
