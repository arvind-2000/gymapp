import 'package:flutter/material.dart';
import 'package:gymwebapp/widget/cardwithshadow.dart';
import 'package:gymwebapp/widget/pricingcard.dart';
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
        child: Image.asset('assets/images/build.jpg',fit: MediaQuery.sizeOf(context).width>700?BoxFit.cover:BoxFit.contain,filterQuality: FilterQuality.low,),)),
       Positioned.fill(
        
         child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [  
                  // NavBar(keyss:changescroll),
                ServiceCard(child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
         children: [
                  //         SizedBox(height: 100,
                  //         width: 300,
                  //         child: OverlayCard(
                  //           gradient:  LinearGradient(
                  // begin: Alignment.topCenter,
                  // end: Alignment.bottomCenter,
                  // colors: [Theme.of(context).colorScheme.primary,Theme.of(context).colorScheme.primary.withOpacity(0.7),Theme.of(context).colorScheme.primary]),
                  //           child: Image.asset("assets/images/build.jpg",fit: BoxFit.cover,)),
              
                  //         ),
              
        Text('BMI',style: TextStyle(fontSize: 20,color: Theme.of(context).colorScheme.surface),),
       Text('Rs 200',style: TextStyle(fontSize: 24,color: Theme.of(context).colorScheme.secondary,fontWeight: FontWeight.bold),),
     ],),),

        SizedBox(width: 30,),
                   ServiceCard(child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
         children: [
                  //         SizedBox(height: 100,
                  //         width: 300,
                  //         child: OverlayCard(
                  //           gradient:  LinearGradient(
                  // begin: Alignment.topCenter,
                  // end: Alignment.bottomCenter,
                  // colors: [Theme.of(context).colorScheme.primary,Theme.of(context).colorScheme.primary.withOpacity(0.7),Theme.of(context).colorScheme.primary]),
                  //           child: Image.asset("assets/images/build.jpg",fit: BoxFit.cover,)),
              
                  //         ),
              
        Text('BMI',style: TextStyle(fontSize: 20,color: Theme.of(context).colorScheme.surface),),
       Text('Rs 200',style: TextStyle(fontSize: 24,color: Theme.of(context).colorScheme.secondary,fontWeight: FontWeight.bold),),
     ],),),

                    SizedBox(width: 30,),
               ServiceCard(child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
         children: [
                  //         SizedBox(height: 100,
                  //         width: 300,
                  //         child: OverlayCard(
                  //           gradient:  LinearGradient(
                  // begin: Alignment.topCenter,
                  // end: Alignment.bottomCenter,
                  // colors: [Theme.of(context).colorScheme.primary,Theme.of(context).colorScheme.primary.withOpacity(0.7),Theme.of(context).colorScheme.primary]),
                  //           child: Image.asset("assets/images/build.jpg",fit: BoxFit.cover,)),
              
                  //         ),
              
        Text('BMI',style: TextStyle(fontSize: 20,color: Theme.of(context).colorScheme.surface),),
       Text('Rs 200',style: TextStyle(fontSize: 24,color: Theme.of(context).colorScheme.secondary,fontWeight: FontWeight.bold),),
     ],),),

                ],
              ),
       ),
          ],
        ),
        
        ),
        ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    super.key, required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
                      
            height: 400,                
            width: 300,
           child: CardWithShadow(
            radius: BorderRadius.zero,
       child: child),
                      );
  }
}