import 'package:flutter/cupertino.dart';
import 'package:gymwebapp/widget/pricingcard.dart';


class PricingScreen extends StatelessWidget {
  const PricingScreen({super.key, required this.keys});
  final GlobalKey keys;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: keys,
      height: 700,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Pricing",style: TextStyle(fontSize: 30),),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PricingCard(),
              SizedBox(width: 40,),
              PricingCard(),
              SizedBox(width: 40,),
              PricingCard(),
            ],
          )
        ],
      )
    );
  }
}