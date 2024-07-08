import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gymwebapp/pages/view/mobile/loginpage.dart';
import 'package:gymwebapp/pages/view/web/loginpage.dart';

@RoutePage()
class ScreenHandlerPage extends StatelessWidget {
  const ScreenHandlerPage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFfbc2eb),
            Color.fromARGB(255, 208, 192, 247),
            Color.fromARGB(255, 209, 218, 244),
          ],
        ),
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width < 600 ? 20 : 40),
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth < 600) {
                  // Mobile layout
                  return const MobileLoginPage();
                } else {
                  // Web layout
                  return const WebLoginPage();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
