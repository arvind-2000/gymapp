import 'package:flutter/material.dart';
import 'package:gymwebapp/config/colors.dart';
import 'package:gymwebapp/widget/cardwithshadow.dart';
import 'package:gymwebapp/widget/titletext.dart';

class PricingCard extends StatelessWidget {
  const PricingCard({super.key});
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 300,
      child: CardWithShadow(child: Column(
        children: [

          Expanded(child: Container(child: Center(child: TitleText(text: "Rs.1500")),color: Theme.of(context).colorScheme.secondary,)),
          Expanded(
            flex: 2,
            child: 
          Container())
        ],
      ),isshadow: true,shadowcolor: Theme.of(context).colorScheme.secondary.withOpacity(0.1),color: blackalt,),
    );
  }
}