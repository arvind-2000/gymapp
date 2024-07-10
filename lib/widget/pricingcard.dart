import 'package:flutter/material.dart';
import 'package:gymwebapp/widget/actionbutton.dart';
import 'package:gymwebapp/widget/cardwithshadow.dart';


class PricingCard extends StatelessWidget {
  const PricingCard({ required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550,
      width: 300,
      child: CardWithShadow(
        radius: BorderRadius.zero,
        isBorder: true,
        padding: const EdgeInsets.all(16),
        // isshadow: true,
        color: Theme.of(context).colorScheme.primary,
        child:child),
    );
  }
}