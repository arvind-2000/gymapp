import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.text, this.size});
  final String text;
  final double? size;
  @override
  Widget build(BuildContext context) {
 
  return FittedBox(child: Text(text,style: TextStyle(fontSize:size??24,fontWeight: FontWeight.bold),));
  }
}