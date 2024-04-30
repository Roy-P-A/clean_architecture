import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


Future<void> initCleanArchitectureApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Future.wait<void>([
    initializeAppControllers(),
  ]);
}

Future<void> initializeAppControllers() async {}

class CleanArchitectureApp extends StatelessWidget {
  const CleanArchitectureApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: F.title,
      debugShowCheckedModeBanner: false,
      //theme: AppTheme.lightTheme,
      ///themeMode: ThemeMode.light,
      navigatorObservers: [
        DismissKeyboardNavigationObserver(),
        //NavigatorObserverWithOrientation(),
      ],
    );
  }
}

class DismissKeyboardNavigationObserver extends NavigatorObserver {
  @override
  void didStartUserGesture(Route route, Route? previousRoute) {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    super.didStartUserGesture(route, previousRoute);
  }
}
