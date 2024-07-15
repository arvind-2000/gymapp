import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gymwebapp/controller/pagegetcontroller.dart';
import 'package:gymwebapp/widget/actionbutton.dart';
import 'package:gymwebapp/widget/normaltext.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key, required this.pagetcontroller});
  final PageGetController pagetcontroller;
  @override
  Widget build(BuildContext context) {
    if(MediaQuery.sizeOf(context).width>800){
    if(pagetcontroller.menu){
      pagetcontroller.changeMenu();
    }
    }
    return AnimatedContainer(
      duration: Durations.extralong2,
      // height: 80,
      padding:const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
      color:Theme.of(context).colorScheme.primary.withOpacity(0.4),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 100,
                child: Image.asset('assets/images/logo.png',fit: BoxFit.contain,),
              ),
               MediaQuery.sizeOf(context).width<800?const SizedBox():Row(
                    children: [
                      NavbarTap(pagetcontroller: pagetcontroller,text: "Home",index: 0,),
                         const  SizedBox(width: 40,),
                 NavbarTap(pagetcontroller: pagetcontroller,text: "Pricing",index: 1,),
                              const  SizedBox(width: 40,),
                        NavbarTap(pagetcontroller: pagetcontroller,text: "Services",index: 2,),
                         const  SizedBox(width: 40,),
                             NavbarTap(pagetcontroller: pagetcontroller,text: "Gallery",index: 3,),
                         const  SizedBox(width: 40,),
              NavbarTap(pagetcontroller: pagetcontroller,text: "Contact Us",index: 4,),
                         const  SizedBox(width: 40,),
              
                    ],
                  ),
                 
                      Row(
                        children: [
                            MediaQuery.sizeOf(context).width<800?IconButton(onPressed: (){
                    pagetcontroller.changeMenu();
                   }, icon: pagetcontroller.menu?Icon(Icons.close):Icon(Icons.menu)):SizedBox(),
                   SizedBox(width: 20,),
                             ActionButton(onpress: (){
                                //  context.router.pushNamed("/WebLoginPage");
                                pagetcontroller.changeshowLogin();
                             }, text:"Log In",isborder: true,),
                         
                          SizedBox(width: 20,),
                          ActionButton(onpress: (){
                              context.router.pushNamed("/formpage");
          
                          }, text:"Register"),
                        ],
                      ),
               
            ],
          ),
          
   pagetcontroller.menu? Column(
       children: [
         NavbarTap(pagetcontroller: pagetcontroller,text: "Home",index: 0,),
                              const  SizedBox(height: 20,),
                     NavbarTap(pagetcontroller: pagetcontroller,text: "Pricing",index: 1,),
                                  const  SizedBox(height: 20,),  
                            NavbarTap(pagetcontroller: pagetcontroller,text: "Services",index: 2,),
                             const  SizedBox(height: 20,),
                                 NavbarTap(pagetcontroller: pagetcontroller,text: "Gallery",index: 3,),
                             const  SizedBox(height: 20,),
                  NavbarTap(pagetcontroller: pagetcontroller,text: "Contact Us",index: 4,),
                             const  SizedBox(height: 10,),
       ],
     ).animate().scaleXY(begin: 0,end: 1):const SizedBox(),
        ],
      ),
    );
  }
}

class NavbarTap extends StatefulWidget {
  const NavbarTap({
    super.key,
    required this.pagetcontroller, required this.text, required this.index,
    
  });
  final int index;

  final PageGetController pagetcontroller;
    final String text;

  @override
  State<NavbarTap> createState() => _NavbarTapState();
}

class _NavbarTapState extends State<NavbarTap> {
  bool _hover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
         widget.pagetcontroller.changeScrolltoScreen(widget.index);
      },
      onHover: (v){
        setState(() {
          _hover = v;
        });
      },
      child: NormalText(text: widget.text.toUpperCase(),color:_hover?Theme.of(context).colorScheme.secondary.withOpacity(0.5) : widget.pagetcontroller.index == widget.index?Theme.of(context).colorScheme.secondary:null,),);
  }
  }