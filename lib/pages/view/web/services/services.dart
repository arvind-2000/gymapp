import 'package:flutter/material.dart';
import 'package:gymwebapp/config/const.dart';
import 'package:gymwebapp/widget/actionbutton.dart';
import 'package:gymwebapp/widget/cardwithshadow.dart';
import 'package:gymwebapp/widget/pricingcard.dart';
import '../../../../widget/overlaycard.dart';
import '../../../../widget/responsivecontainer/responsivecontainer.dart';

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
                      Theme.of(context).colorScheme.primary.withOpacity(0.7),
                      Theme.of(context).colorScheme.primary
                    ]),
                child: Image.asset(
                  'assets/images/build.jpg',
                  fit: MediaQuery.sizeOf(context).width > 700
                      ? BoxFit.cover
                      : BoxFit.contain,
                  filterQuality: FilterQuality.low,
                ),
              )),
              Positioned.fill(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // NavBar(keyss:changescroll),
                    ServiceCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              SizedBox(
                                height: 200,
                                width: 300,
                                child: OverlayCard(
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Theme.of(context).colorScheme.primary,
                                          Theme.of(context)
                                              .colorScheme
                                              .primary
                                              .withOpacity(0.7),
                                          Theme.of(context).colorScheme.primary
                                        ]),
                                    child: Image.asset(
                                      "assets/images/build.jpg",
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Positioned(
                                right: 0,
                                top: 0,
                                left: 0,
                                bottom: 0,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'BMI',
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .surface),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      'Rs 200',
                                      style: TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Text(
                                            "First time free for members",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .surface
                                                    .withOpacity(0.6)),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  ActionButton(onpress: () {}, text: "Order")
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                    SizedBox(
                      width: 30,
                    ),
                    ServiceCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              SizedBox(
                                height: 200,
                                width: 300,
                                child: OverlayCard(
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Theme.of(context).colorScheme.primary,
                                          Theme.of(context)
                                              .colorScheme
                                              .primary
                                              .withOpacity(0.7),
                                          Theme.of(context).colorScheme.primary
                                        ]),
                                    child: Image.asset(
                                      "assets/images/build.jpg",
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Positioned(
                                right: 0,
                                top: 0,
                                left: 0,
                                bottom: 0,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Steam Bath',
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .surface),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      'Rs 300',
                                      style: TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Text(
                                            "30 mins per head",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .surface
                                                    .withOpacity(0.6)),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  ActionButton(onpress: () {}, text: "Order")
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                    const SizedBox(
                      width: 30,
                    ),
                    ServiceCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              SizedBox(
                                height: 200,
                                width: 300,
                                child: OverlayCard(
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Theme.of(context).colorScheme.primary,
                                          Theme.of(context)
                                              .colorScheme
                                              .primary
                                              .withOpacity(0.7),
                                          Theme.of(context).colorScheme.primary
                                        ]),
                                    child: Image.asset(
                                      "assets/images/build.jpg",
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Positioned(
                                right: 0,
                                top: 0,
                                left: 0,
                                bottom: 0,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Massage Chair',
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .surface),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          'Rs 400',
                                          style: TextStyle(
                                              fontSize: 26,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '30 mins',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .surface
                                                  .withOpacity(0.6)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Icon(Icons.alarm, size: 12),
                                              Text(
                                                "30 mins",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .surface
                                                        .withOpacity(0.6)),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Rs 300 (Xtremer)",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .surface
                                                    .withOpacity(0.6)),
                                            textAlign: TextAlign.center,
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Rs 400 (Outsider)",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .surface
                                                    .withOpacity(0.6)),
                                            textAlign: TextAlign.center,
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.alarm, size: 12),
                                              Text(
                                                "60 mins",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .surface
                                                        .withOpacity(0.6)),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Rs 500 (Xtremer)",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .surface
                                                    .withOpacity(0.6)),
                                            textAlign: TextAlign.center,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Rs 700 (Outsider)",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .surface
                                                    .withOpacity(0.6)),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  ActionButton(onpress: () {}, text: "Order")
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
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
        radius: BorderRadius.zero, child: child),
    );
  }
}
