import 'package:flutter/material.dart';
import 'package:gymwebapp/widget/cardwithshadow.dart';


class PricingCard extends StatelessWidget {
  const PricingCard({super.key,  required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 300,
      child: CardWithShadow(
        margin: EdgeInsets.symmetric(horizontal: 16),
        radius: BorderRadius.zero,
        isBorder: true,
        padding: const EdgeInsets.all(16),
        // isshadow: true,
        color: Theme.of(context).colorScheme.primary,
        child:child)
    );
  }
}