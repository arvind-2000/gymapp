import 'package:flutter/material.dart';

class OverlayCard extends StatelessWidget {
  const OverlayCard({super.key, required this.child, this.gradient});
  final Widget child;
  final LinearGradient? gradient;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,top: 0,
          right: 0,
          left: 0,
          child: child),
        Container(

          decoration: BoxDecoration(
          
            gradient:gradient??LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Theme.of(context).colorScheme.primary.withOpacity(0.3),Theme.of(context).colorScheme.primary])
          ),
            
        
        ),
      ],
    );
  }
}