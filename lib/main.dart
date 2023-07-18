import 'package:flutter/material.dart';
import 'package:vibe_up/features/splash_screen/splash_screen.dart';
import 'package:vibe_up/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // themeMode: ThemeMode.system,
      theme: AppTheme.defineLight(),
      // darkTheme: AppTheme.defineDark(),
      home: const SplashScreen(),
    );
  }
}
