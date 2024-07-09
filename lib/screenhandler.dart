import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gymwebapp/pages/view/web/contact/contact.dart';
import 'package:gymwebapp/pages/view/web/home/landingpage.dart';
import 'package:gymwebapp/pages/view/web/loginpage.dart';
import 'package:gymwebapp/pages/view/web/pricing/pricing.dart';
import 'package:gymwebapp/pages/view/web/services/services.dart';

import 'widget/actionbutton.dart';
import 'widget/normaltext.dart';

@RoutePage()
class ScreenHandlerPage extends StatefulWidget {
  const ScreenHandlerPage({super.key});

  @override
  State<ScreenHandlerPage> createState() => _ScreenHandlerPageState();
}

class _ScreenHandlerPageState extends State<ScreenHandlerPage> {
  final GlobalKey _landing = GlobalKey();
  final GlobalKey _pricing = GlobalKey();
  final GlobalKey _service = GlobalKey();
  final GlobalKey _contact = GlobalKey();

  void changeScrolltoScreen(GlobalKey key){

    Scrollable.ensureVisible(key.currentContext!,duration: const Duration(seconds: 1),curve: Curves.decelerate);
    
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(

        decoration:  BoxDecoration(
          color: Theme.of(context).colorScheme.primary
          // color: Theme.of(context).colorScheme.
          // gradient: LinearGradient(
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          //   colors: [
          //     Color(0xFFfbc2eb),
          //     Color.fromARGB(255, 208, 192, 247),
          //     Color.fromARGB(255, 209, 218, 244),
          //   ],
          // ),
        ),
        child: Column(
          children: [
                     Container(
      height: 80,
      padding:EdgeInsets.symmetric(vertical: 16,horizontal: 32),
      color:Theme.of(context).colorScheme.primary.withOpacity(0.4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 100,
            child: Image.asset('assets/images/logo.png',fit: BoxFit.contain,),
          ),
          Row(
            children: [
              InkWell(
                onTap: (){
                  changeScrolltoScreen(_landing);
                },
                child: NormalText(text: "Home".toUpperCase(),)),
              SizedBox(width: 40,),
              InkWell(
                  onTap: (){
                    changeScrolltoScreen(_pricing);
                  },
                child: NormalText(text: "Pricing".toUpperCase(),)),
                  SizedBox(width: 40,),
              InkWell(
                onTap: (){
                  changeScrolltoScreen(_service);
                },
                child: NormalText(text: "Services".toUpperCase(),)),
                  SizedBox(width: 40,),
              InkWell(
                    onTap: (){
                  changeScrolltoScreen(_contact);
                },
                child: NormalText(text: "Contact Us".toUpperCase(),)),
                 SizedBox(width: 40,),
      
            ],
          ),
                  ActionButton(onpress: (){}, text:"Register")

        ],
      ),
    ),
            Expanded(
              child: SingleChildScrollView(
              
                child: 
                // Padding(
                  // padding: EdgeInsets.symmetric(horizontal: width < 600 ? 20 : 40),
                  // padding: EdgeInsets.zero,
                  // child: LayoutBuilder(
                  //   builder: (context, constraints) {
                  //     // if (constraints.maxWidth < 600) {
                  //     //   // Mobile layout
                  //     //   return const MobileLoginPage();
                  //     // } else {
                  //     //   // Web layout
                  //     //   return const WebLoginPage();
                  //     // }
                              
                  //     return 
                      Column(
                        children: [
                 
                          LandingPage(keys: _landing),
              
                          PricingScreen(keys: _pricing,),
              
                          ServicesScreen(keys:_service,),
                          
                          ContactUsScreen(keys: _contact,), 
                          SizedBox(
                            height: 700,
                            child: WebLoginPage()),
                        ],
                      )
                //     },
                //   ),
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
