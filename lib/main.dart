import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:gymwebapp/controller/tapcontroller.dart';
import 'package:gymwebapp/pages/view/web/applicationform.dart';
import 'package:gymwebapp/router/router.dart';
import 'package:gymwebapp/screenhandler.dart';

void main() {
  runApp(const MyApp());
}

final _appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        fontFamily: 'KulimPark',
      ),
    );
  }
}
