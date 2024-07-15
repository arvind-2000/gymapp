import 'package:flutter/material.dart';
import 'package:gymwebapp/config/const.dart';
import 'package:gymwebapp/widget/actionbutton.dart';
import 'package:gymwebapp/widget/cardwithshadow.dart';
import 'package:gymwebapp/widget/pricingcard.dart';
import '../../../../widget/overlaycard.dart';
import '../../../../widget/responsivecontainer/responsivecontainer.dart';
import '../../../../widget/titletext.dart';
import '../../../../widget/todocard.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    debugPrint("services in debug");
    return Container(
      height: 700,
      child: Responsivecontainer(
        child1: Container(
          // color: Colors.red,
          child: Stack(
            children: [
              Positioned(
                  child: OverlayCard(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                       Theme.of(context).colorScheme.primary,
                      
                      Theme.of(context).colorScheme.primary.withOpacity(0.6),
                      Theme.of(context).colorScheme.primary,
                     
                    ]),
                child: Image.asset(
                  'assets/images/service.jpg',
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.low,
                ),
              )),
              Positioned(
                right: 0,
                top: 0,
                bottom: 0,
                left: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                       const Expanded(
                      
                      child:Center(child: TitleText(text: "Services",))),
                    Expanded(
                      flex: 3,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // NavBar(keyss:changescroll),
                          // ServiceCard(
                          //   child: Column(
                          //     crossAxisAlignment: CrossAxisAlignment.center,
                          //     children: [
                          //       Column(
                          //         mainAxisAlignment: MainAxisAlignment.center,
                          //         children: [
                          //           Text(
                          //             'BMI',
                          //             style: TextStyle(
                          //                 fontSize: 30,
                          //                 color: Theme.of(context)
                          //                     .colorScheme
                          //                     .surface),
                          //           ),
                          //           const SizedBox(
                          //             height: 10,
                          //           ),
                          //           const Text(
                          //             'Rs 200',
                          //             style: TextStyle(
                          //                 fontSize: 26,
                          //                 fontWeight: FontWeight.bold),
                          //           ),
                          //         ],
                          //       ),
                          //       Expanded(
                          //         child: Padding(
                          //           padding: const EdgeInsets.all(8.0),
                          //           child: Column(
                          //             mainAxisAlignment:
                          //                 MainAxisAlignment.spaceBetween,
                          //             children: [
                          //               Expanded(
                          //                 child: SingleChildScrollView(
                          //                   child: Column(
                          //                     children: [
                          //                       Text(
                          //                         "First time free for members",
                          //                         style: TextStyle(
                          //                             fontSize: 14,
                          //                             color: Theme.of(context)
                          //                                 .colorScheme
                          //                                 .surface
                          //                                 .withOpacity(0.6)),
                          //                         textAlign: TextAlign.center,
                          //                       ),
                          //                     ],
                          //                   ),
                          //                 ),
                          //               ),
                          //               ActionButton(onpress: () {}, text: "Order")
                          //             ],
                          //           ),
                          //         ),
                          //       )
                          //     ],
                          //   ),
                          // ),
                          TodoCard(onOrderPressed: (){},subtitle: "Rs 200", title: "BMI",
                          tasks: const ["First time free for members"],),
                      
                          SizedBox(
                            width: 30,
                          ),
                           TodoCard(onOrderPressed: (){},subtitle: "Rs 300", title: "STEAM BATH",
                          tasks: const ["Rs 300 /30 mins per person"],),
                      
                          const SizedBox(
                            width: 30,
                          ),
                          TodoCard(onOrderPressed: (){},subtitle: "Rs 400", title: "Massage Chair",
                          tasks: const ["Rs 400/ 30 mins (Outsider)","Rs 300/ 30 mins (Xtremer)","Rs 700/ 1 hour (Outsider)","Rs 500/ 1 hour (Xtremer)"],),
                        ],
                      ),
                    ),
                    const Expanded(
                      
                      child: SizedBox())
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
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      width: 300,
      child: CardWithShadow(
        color: const Color.fromARGB(255, 26, 25, 25),
        margin: EdgeInsets.symmetric(horizontal: 16),
        radius: BorderRadius.zero, child: child),
    );
  }
}
