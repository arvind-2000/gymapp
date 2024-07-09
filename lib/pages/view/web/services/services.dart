import 'package:flutter/cupertino.dart';
import 'package:gymwebapp/widget/normaltext.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key, required this.keys});
  final GlobalKey keys;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: keys,
      height: 700,
      child: Center(
        child: NormalText(text: "Service",size: 24,),
      ),
    );
  }
}