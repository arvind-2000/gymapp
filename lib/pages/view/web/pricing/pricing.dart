import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gymwebapp/widget/pricingcard.dart';

import '../../../../widget/actionbutton.dart';
import '../../../../widget/cardwithshadow.dart';


class PricingScreen extends StatelessWidget {
  const PricingScreen({super.key, required this.controller,});
  final AnimationController controller;
  @override
  Widget build(BuildContext context) {
    debugPrint("pricing in debug");
    return SizedBox(
 
      height: 700,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Pricing",style: TextStyle(fontSize: 30),),
          const SizedBox(height: 30,),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              // mainAxisAlignment: MainAxisAlignment.center,
              shrinkWrap: true,
              children: [
                PricingCard(child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
            
            // Expanded(child: Stack(
            //   children: [
            //     // Positioned.fill(child: Image.asset('assets/')),
            //     Center(child: TitleText(text: "Rs.1500")),
            //   ],
            // )),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text("All",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.surface ),),
                const SizedBox(height: 20,),
                Row(
            
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Rs 1200",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 20),),
                    Text(" /Admission Fee",style: TextStyle(color: Theme.of(context).colorScheme.surface.withOpacity(0.3)),),
                  ],
                )
              ],
            )),
            Container(color: Theme.of(context).colorScheme.surface,height: 0.3,width: 80,),
             Expanded(
                    flex: 3,
              child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 const Text("Personal",style: TextStyle(fontSize: 18),),
                 const SizedBox(height: 10,),
                   
                
                      Row(
            
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Rs 3500",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 20),),
                    Text("/month",style: TextStyle(color: Theme.of(context).colorScheme.surface.withOpacity(0.3)),),
                  ],
                ),
                 const SizedBox(height: 24,),
                  const Text("General",style: TextStyle(fontSize: 18),),
                 const SizedBox(height: 10,),
                   
                
                      Row(
            
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Rs 1500",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 20),),
                    Text("/month",style: TextStyle(color: Theme.of(context).colorScheme.surface.withOpacity(0.3)),),
                  ],
                ),
              
              ],
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ActionButton(onpress: (){}, text: "Get Started"),
              ],
            )
                    ],
                  ),).animate(controller: controller).fade(begin: 0,end: 1),
                const SizedBox(width: 40,),
            PricingCard(child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
            
            // Expanded(child: Stack(
            //   children: [
            //     // Positioned.fill(child: Image.asset('assets/')),
            //     Center(child: TitleText(text: "Rs.1500")),
            //   ],
            // )),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text("Personal",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.surface ),),
                const SizedBox(height: 20,),
                Row(
            
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Rs 3500",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 20),),
                    Text("/month",style: TextStyle(color: Theme.of(context).colorScheme.surface.withOpacity(0.3)),),
                  ],
                )
              ],
            )),
            Container(color: Theme.of(context).colorScheme.surface,height: 0.3,width: 80,),
             Expanded(
                    flex: 3,
              child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 const Text("3 months",style: TextStyle(fontSize: 18),),
                 const SizedBox(height: 10,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    CardWithShadow(
            
                      isBorder: true,
                      radius: BorderRadius.zero,
                     padding:const  EdgeInsets.symmetric(vertical: 4,horizontal: 8),
                      child:Text("15% Discount",style: TextStyle(fontSize: 12,color: Theme.of(context).colorScheme.surface.withOpacity(0.4)),)),
                   ],
                 ),
                 const SizedBox(height: 10,),
                 Text("Rs 8920",style: TextStyle(fontSize: 20,color: Theme.of(context).colorScheme.secondary,fontWeight: FontWeight.bold),),
                 const SizedBox(height: 24,),
            
            
                      const Text("6 Months",style: TextStyle(fontSize: 18),),
                 const SizedBox(height: 10,),
                    Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    CardWithShadow(
            
                      isBorder: true,
                      radius: BorderRadius.zero,
                     padding:const  EdgeInsets.symmetric(vertical: 4,horizontal: 8),
                      child:Text("20% Discount",style: TextStyle(fontSize: 12,color: Theme.of(context).colorScheme.surface.withOpacity(0.4)),)),
                   ],
                 ),
                 const SizedBox(height: 10,),
                 Text('Rs 16800',style: TextStyle(fontSize: 20,color: Theme.of(context).colorScheme.secondary,fontWeight: FontWeight.bold),),
                 const SizedBox(height: 24,),
            
                 const Text("12 months",style: TextStyle(fontSize: 18),),
                 const SizedBox(height: 10,),
                      Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    CardWithShadow(
            
                      isBorder: true,
                      radius: BorderRadius.zero,
                     padding:const  EdgeInsets.symmetric(vertical: 4,horizontal: 8),
                      child:Text("25% Discount",style: TextStyle(fontSize: 12,color: Theme.of(context).colorScheme.surface.withOpacity(0.4)),)),
                   ],
                 ),
                 const SizedBox(height: 10,),
                 Text("Rs 31500",style: TextStyle(fontSize: 20,color: Theme.of(context).colorScheme.secondary,fontWeight: FontWeight.bold),),
                 const SizedBox(height: 24,),
              
              ],
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ActionButton(onpress: (){}, text: "Get Started"),
              ],
            )
                    ],
                  ),),
                const SizedBox(width: 40,),
                    PricingCard(child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
            
            // Expanded(child: Stack(
            //   children: [
            //     // Positioned.fill(child: Image.asset('assets/')),
            //     Center(child: TitleText(text: "Rs.1500")),
            //   ],
            // )),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text("General",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.surface ),),
                const SizedBox(height: 20,),
                Row(
            
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Rs 1500",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 20),),
                    Text("/month",style: TextStyle(color: Theme.of(context).colorScheme.surface.withOpacity(0.3)),),
                  ],
                )
              ],
            )),
            Container(color: Theme.of(context).colorScheme.surface,height: 0.3,width: 80,),
             Expanded(
                    flex: 3,
              child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            
            
                      const Text("6 Months",style: TextStyle(fontSize: 18),),
                 const SizedBox(height: 10,),
                    Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    CardWithShadow(
            
                      isBorder: true,
                      radius: BorderRadius.zero,
                     padding:const  EdgeInsets.symmetric(vertical: 4,horizontal: 8),
                      child:Text("20% Discount",style: TextStyle(fontSize: 12,color: Theme.of(context).colorScheme.surface.withOpacity(0.4)),)),
                   ],
                 ),
                 const SizedBox(height: 10,),
                 Text('Rs 7200',style: TextStyle(fontSize: 20,color: Theme.of(context).colorScheme.secondary,fontWeight: FontWeight.bold),),
                 const SizedBox(height: 24,),
            
                 const Text("12 months",style: TextStyle(fontSize: 18),),
                 const SizedBox(height: 10,),
                      Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    CardWithShadow(
            
                      isBorder: true,
                      radius: BorderRadius.zero,
                     padding:const  EdgeInsets.symmetric(vertical: 4,horizontal: 8),
                      child:Text("25% Discount",style: TextStyle(fontSize: 12,color: Theme.of(context).colorScheme.surface.withOpacity(0.4)),)),
                   ],
                 ),
                 const SizedBox(height: 10,),
                 Text("Rs 13500",style: TextStyle(fontSize: 20,color: Theme.of(context).colorScheme.secondary,fontWeight: FontWeight.bold),),
                 const SizedBox(height: 24,),
              
              ],
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ActionButton(onpress: (){}, text: "Get Started"),
              ],
            )
                    ],
                  ),),
              ],
            ),
          )
        ],
      )
    );
  }
}