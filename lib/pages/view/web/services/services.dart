import 'package:flutter/material.dart';
import '../../../../widget/overlaycard.dart';
import '../../../../widget/responsivecontainer/responsivecontainer.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key, required this.keys});
  final GlobalKey keys;
  @override
  Widget build(BuildContext context) {
    return Container(
      key: keys,
      height: 700,
      child: Responsivecontainer(child1: Container(
        
        // color: Colors.red,
        child: Stack(
          children: [
            Positioned(
            
              
              child: OverlayCard(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Theme.of(context).colorScheme.primary,Theme.of(context).colorScheme.primary.withOpacity(0.7),Theme.of(context).colorScheme.primary]),
        child: Image.asset('assets/images/build.jpg',fit: BoxFit.cover,filterQuality: FilterQuality.low,),)),
           const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [  
                // NavBar(keyss:changescroll),

              ],
            ),
          ],
        ),
        
        ),
        ),
    );
  }
}