import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gymwebapp/controller/pagegetcontroller.dart';
import 'package:gymwebapp/widget/actionbutton.dart';
import 'package:gymwebapp/widget/normaltext.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key, required this.pagetcontroller});
  final PageGetController pagetcontroller;
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
           MediaQuery.sizeOf(context).width<800?const SizedBox():Row(
                children: [
                  InkWell(
                    onTap: (){
                       pagetcontroller.changeScrolltoScreen(0);
                    },
                    child: NormalText(text: "Home".toUpperCase(),color: pagetcontroller.index == 0?Theme.of(context).colorScheme.secondary:null,),),
                     const  SizedBox(width: 40,),
                  InkWell(
                    onTap: (){
                      pagetcontroller.changeScrolltoScreen(1);
                    },
                    child: NormalText(text: "Pricing".toUpperCase(),color: pagetcontroller.index == 1?Theme.of(context).colorScheme.secondary:null,)),
                          const  SizedBox(width: 40,),
                  InkWell(
                    onTap: (){
                      pagetcontroller.changeScrolltoScreen(2);
                    },
                    child: NormalText(text: "Services".toUpperCase(),color: pagetcontroller.index == 2?Theme.of(context).colorScheme.secondary:null,)),
                     const  SizedBox(width: 40,),
                  InkWell(
                    onTap: (){
                      pagetcontroller.changeScrolltoScreen(3);
                    },
                    child: NormalText(text: "Contact Us".toUpperCase(),color: pagetcontroller.index == 3?Theme.of(context).colorScheme.secondary:null,)),
                     const  SizedBox(width: 40,),
          
                ],
              ),
                  Row(
                    children: [
                         ActionButton(onpress: (){
                             context.router.pushNamed("/WebLoginPage");
                         }, text:"Log In",isborder: true,),
                     
                      SizedBox(width: 20,),
                      ActionButton(onpress: (){
                          context.router.pushNamed("/formpage");

                      }, text:"Register"),
                    ],
                  )

        ],
      ),
    );
  }
}