import 'package:flutter/widgets.dart';

import '../../features/login/login.dart';

class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';
  static const String mainLayout = '/mainlayout';
  static const String createOrder = '/createorderscreen';

  // Specify the correct type for the routes map
  static Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    //splash: (context) => SplashScreen(),
    login: (context) => LoginPage(),
    // mainLayout: (context) => const MainLayoutScreen(),
    // createOrder: (context) => const CreateOrderScreen(),
  };
}