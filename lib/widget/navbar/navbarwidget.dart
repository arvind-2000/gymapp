import 'package:flutter/material.dart';
import 'package:gymwebapp/widget/actionbutton.dart';
import 'package:gymwebapp/widget/normaltext.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding:const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
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
              NormalText(text: "Home".toUpperCase()),
              SizedBox(width: 40,),
              NormalText(text: "Pricing".toUpperCase()),
                  SizedBox(width: 40,),
              NormalText(text: "Services".toUpperCase()),
                  SizedBox(width: 40,),
              NormalText(text: "Contact Us".toUpperCase()),
                 SizedBox(width: 40,),
      
            ],
          ),
                  ActionButton(onpress: (){}, text:"Register")

        ],
      ),
    );
  }
}