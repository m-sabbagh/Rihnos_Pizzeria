import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class PicsSlideShow extends StatefulWidget {
  const PicsSlideShow({Key key}) : super(key: key);

  @override
  _PicsSlideShowState createState() => _PicsSlideShowState();
}

class _PicsSlideShowState extends State<PicsSlideShow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ImageSlideshow(
        width: double.infinity,
        height: 300,
        initialPage: 0,
        indicatorColor: Colors.white,
        indicatorBackgroundColor: Colors.grey,
        children: [
          Image.asset(
            'images/Four_Seasons_Pizza.webp',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'images/Smoked_Turkey_Sandwi.webp',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'images/Mozzarella_Sticks.webp',
            fit: BoxFit.cover,
          ),
        ],
        //autoPlayInterval: 3000,
      ),
    );
  }
}
