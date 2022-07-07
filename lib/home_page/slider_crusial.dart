import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:sizer/sizer.dart';

class MySlider extends StatelessWidget {
  final _sliderKey = GlobalKey();
  MySlider({Key? key}) : super(key: key);

  final List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];

  final List<String> images = [
    'https://wallpaperaccess.com/full/2792340.jpg',
    'https://wallpaperaccess.com/full/2792350.jpg',
    'https://wallpaperaccess.com/full/2792347.jpg',
    'https://wallpaperaccess.com/full/2792432.jpg',
    'https://wallpaperaccess.com/full/2614545.jpg',
    'https://wallpaperaccess.com/full/2792584.jpg',
    'https://wallpaperaccess.com/full/2792583.jpg',
    'https://wallpaperaccess.com/full/2792492.jpg',
  ];
  final bool _isPlaying = true;

  // get _sliderKey => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 26.h,
        child: ListView(
          children: <Widget>[
            Container(
              height: 26.h,
              child: CarouselSlider.builder(
                //scrollPhysics: NeverScrollableScrollPhysics(),
                key: _sliderKey,
                unlimitedMode: true,
                autoSliderTransitionTime: Duration(seconds: 2),
                //autoSliderDelay: Duration(seconds: 5),
                slideBuilder: (index) {
                  return Container(
                    height: 26.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(images[index]),
                          fit: BoxFit.cover),
                    ),
                    //color: colors[index],
                    // child: Text(
                    //   letters[index],
                    //   style: TextStyle(fontSize: 200, color: Colors.white),
                    // ),
                  );
                },
                slideTransform: ZoomOutSlideTransform(),
                slideIndicator: CircularSlideIndicator(
                  indicatorBorderWidth: 2,
                  indicatorRadius: 4,
                  itemSpacing: 15,
                  currentIndicatorColor: Colors.white,
                  padding: EdgeInsets.only(bottom: 6),
                ),
                itemCount: images.length,
                enableAutoSlider: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 1),
              child: Align(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 190, maxWidth: 600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
