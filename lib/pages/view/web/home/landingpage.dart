
import 'package:flutter/material.dart';
import 'package:gymwebapp/widget/actionbutton.dart';
import 'package:gymwebapp/widget/navbar/navbarwidget.dart';

import 'package:gymwebapp/widget/responsivecontainer/responsivecontainer.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key, required this.keys, });
  final GlobalKey keys;
  // final Function(GlobalKey) changescroll;
  @override
  Widget build(BuildContext context) {
    return  Container(
      key: keys,
      height: 800,
      child: Responsivecontainer(child1: Container(
        
        // color: Colors.red,
        child: Stack(
          children: [
            Positioned.fill(
            
              
              child: Container(
        
        child: Image.asset('assets/images/first.jpg',fit: BoxFit.cover,),)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [  
                // NavBar(keyss:changescroll),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome to Xtreme Fitness",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.secondary),),
                      FittedBox(child: Text("Cghfgdhgfhdgfh vhdjh vhdjh\ngfhgffhs\ndgfhdghfgdhfghdgdgjghd".toUpperCase(),style: const TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)),
                      const SizedBox(height: 40,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        
                        children: [
                          ActionButton(onpress: (){}, text:"Get Started"),
                        ],
                      ),
                    ],
                  ),
                ),
              )
              ],
            ),
          ],
        ),
        
        ),
        ),
    );
  }
}