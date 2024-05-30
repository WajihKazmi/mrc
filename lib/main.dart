import 'package:mrc/view_model/auth/forget_email_view_model.dart';
import 'package:mrc/view_model/auth/forget_password_view_model.dart';
import 'package:mrc/view_model/auth/login_view_model.dart';
import 'package:mrc/view_model/auth/sign_up_view_model.dart';

import 'view_model/privacy_policy_view_model.dart';
import 'view_model/faqs_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mrc/view/splash_view.dart';
import 'package:mrc/view_model/bottom_nav_view_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/utils/routes/routes.dart';
import '/utils/routes/routes_name.dart';
import '/view_model/services/token_view_model.dart';
import 'package:device_preview/device_preview.dart';
import 'resource/app_theme.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
      systemStatusBarContrastEnforced: false));
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => BottomNavViewModel()),
    ChangeNotifierProvider(create: (_) => TokenViewModel()),
    ChangeNotifierProvider(create: (_) => FaqsViewModel()),
    ChangeNotifierProvider(create: (_) => PrivacyPolicyViewModel()),
    ChangeNotifierProvider(create: (_) => LoginViewModel()),
    ChangeNotifierProvider(create: (_) => SignUpViewModel()),
    ChangeNotifierProvider(create: (_) => ForgetPasswordViewModel()),
    ChangeNotifierProvider(create: (_) => ForgetEmailViewModel()),
  ], child: const MyApp()
      // child: DevicePreview(
      //     enabled: true, builder: (BuildContext context) => const MyApp())
      ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) => MaterialApp(
            // useInheritedMediaQuery: true,
            // locale: DevicePreview.locale(context),
            // builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            theme: Themes.lightThemeData(),
            initialRoute: RoutesName.splash,
            onGenerateRoute: Routes.generateRoute,
          ));
}
