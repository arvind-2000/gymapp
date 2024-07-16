import 'package:flutter/material.dart';

class NormalText extends StatefulWidget {
  const NormalText({super.key, required this.text, this.color, this.size});
  final String text;
  final Color? color;
  final double? size;

  @override
  State<NormalText> createState() => _NormalTextState();
}

class _NormalTextState extends State<NormalText> {
  bool hover = false;
  @override
  Widget build(BuildContext context) {
    return Text(widget.text,style: TextStyle(color:hover?Theme.of(context).colorScheme.secondary:widget.color,fontSize:hover?18:widget.size,fontWeight: FontWeight.bold));
  }
}