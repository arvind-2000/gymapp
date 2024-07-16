import 'package:flutter/material.dart';
import 'package:gymwebapp/widget/titletext.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      child: Column(
        children: [
          SizedBox(height: 20,),
          TitleText(text: "Gallery"),
          Expanded(
            child: ImageSlider(imageUrls: [
              "assets/images/bg1.jpg",
              "assets/images/bg1.jpg",
              "assets/images/bg1.jpg",
              "assets/images/bg1.jpg",
              ]),
          ),
        ],
      ),
    );
  }
}



class ImageSlider extends StatelessWidget {
  final List<String> imageUrls;

  const ImageSlider({
    required this.imageUrls,
  });

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController(viewportFraction: 0.4,initialPage: 1);

    return Column(
      children: <Widget>[
        Expanded(
          child: PageView.builder(
        
            controller: _pageController,
            itemCount: imageUrls.length,
            itemBuilder: (context, index) {
              return ImageSliderPage(
                imageUrl: imageUrls[index],
              );
            },
          ),
        ),
        const SizedBox(height: 16),
        SmoothPageIndicator(
          controller: _pageController,
          count: imageUrls.length,
          effect: WormEffect(
            dotColor: Colors.grey,
            activeDotColor: Theme.of(context).colorScheme.secondary,
            dotHeight: 8,
            dotWidth: 8,
            spacing: 16,
          ),
        ),
       const SizedBox(height: 16),
      ],
    );
  }
}

class ImageSliderPage extends StatelessWidget {
  final String imageUrl;

  const ImageSliderPage({
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Image.asset(
          imageUrl,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}
