import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.onpress,required this.text, this.icon, this.iconsize, this.iconcolor, this.textsize, this.padding});
  final VoidCallback onpress;
  final String text;
  final IconData? icon;
  final double? iconsize;
  final Color? iconcolor;
  final double? textsize;
  final EdgeInsets? padding;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onpress,
      padding: const EdgeInsets.all(24),
      hoverColor: Theme.of(context).colorScheme.surface.withOpacity(0.2),
      color: Theme.of(context).colorScheme.secondary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
       icon==null?const SizedBox():Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Icon(icon,size: iconsize,color: iconcolor,),
        ),
      
        Text(text,style: TextStyle(fontSize: textsize,color: Colors.white))
      ],),
    );
  }
}