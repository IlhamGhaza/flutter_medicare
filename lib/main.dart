import 'package:flutter/material.dart';
import 'package:flutter_medicare/presentation/login/splash_screen.dart';

import 'common/color_extension.dart';

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
      theme: ThemeData(
       fontFamily: "Poppins",
        scaffoldBackgroundColor: TColor.bg,
        appBarTheme: AppBarTheme(elevation: 0, backgroundColor: TColor.primary),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}