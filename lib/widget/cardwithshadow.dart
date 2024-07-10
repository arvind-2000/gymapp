import 'package:flutter/material.dart';

class CardWithShadow extends StatelessWidget {
  const CardWithShadow({super.key,
  required this.child,
  this.padding = const EdgeInsets.all(0),
  this.margin = const EdgeInsets.all(0),
  this.color,
  this.isshadow = false,
  this.radius,
  this.isGradient = false,
  this.gradientcolor, this.shadowcolor, 
  this.isBorder= false
  });
  final Widget child;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final Color? color;
  final Color? shadowcolor;
  final bool isshadow;
  final BorderRadius? radius;
  final bool isGradient;
  final bool isBorder;
  final List<Color>? gradientcolor;
  @override 
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        border:isBorder?Border.all(color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),width: 0.4):null,
        color: color??Theme.of(context).colorScheme.primary,
        borderRadius: radius??BorderRadius.circular(8),
        gradient: isGradient? LinearGradient(
          colors: gradientcolor??const [Color(0xff283048), Color(0xffdedede), Color(0xff858a98)],
          stops: [0, 0.5, 1],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ):null,
      
        boxShadow:isshadow?[
          BoxShadow(
            color:shadowcolor?? const Color.fromARGB(255, 32, 31, 31).withOpacity(0.1),
            offset: const Offset(1, 2),
            blurRadius: 6,
            spreadRadius: 3
          )
        ]:null
      ),
child: child,
    );
  }
}