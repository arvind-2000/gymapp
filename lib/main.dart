import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gymwebapp/config/theme.dart';
import 'package:gymwebapp/router/router.dart';


void main() {
  runApp(const MyApp());
}

final _appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse,PointerDeviceKind.touch}
      ),
      routerConfig: _appRouter.config(),
      debugShowCheckedModeBanner: false,
      theme: lightheme,
      
    );
  }
}
