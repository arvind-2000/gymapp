import 'package:flutter/cupertino.dart';

class Responsivecontainer extends StatelessWidget {
  const Responsivecontainer({super.key, this.child1, this.child2});
  final Widget? child1;
  final Widget? child2;
  @override
  Widget build(BuildContext context) {
    return MediaQuery.sizeOf(context).width<700?Column(
      children: [
             Expanded(child: child1??SizedBox()),
        Expanded(child: child2??SizedBox())
      ],
    ):Row(
      children:[
       child1==null?const SizedBox(): Expanded(child: child1??const SizedBox()),
        child2==null?const SizedBox():Expanded(child: child2??const SizedBox())

      ]
    );
  }
}