import 'package:coin_based_app/theme/theme.dart';
import 'package:flutter/material.dart';

import 'screens/splash.dart';

void main() => runApp(const AppWidget());

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: customTheme,
      home: const AniApp(),
    );
  }
}
