import 'package:flutter/material.dart';

class NormalText extends StatefulWidget {
  const NormalText({super.key, required this.text, this.color, this.size,this.changes,});
  final String text;
  final Color? color;
  final double? size;
  final Function(GlobalKey)? changes;
  @override
  State<NormalText> createState() => _NormalTextState();
}

class _NormalTextState extends State<NormalText> {
  bool hover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){
        widget.changes;
      },
      hoverColor: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
      hoverDuration: const Duration(seconds: 1),
      onHover: (v){
setState(() {
  hover = v;
});
      },
      child: Text(widget.text,style: TextStyle(color:hover?Theme.of(context).colorScheme.secondary:widget.color,fontSize:hover?18:widget.size,fontWeight: FontWeight.bold)));
  }
}