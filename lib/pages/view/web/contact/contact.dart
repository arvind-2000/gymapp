import 'package:flutter/cupertino.dart';

import '../../../../widget/normaltext.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key, required this.keys});
  final GlobalKey keys;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: keys,
      height: 700,
      child: Center(
        child: NormalText(text: "contact",size: 24,),
      ),
    );
  }
}