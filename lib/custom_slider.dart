import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselWithDotsPage extends StatefulWidget {
  List<String> imgList=[
  'assets/Sports-and-Athletes-Website-Header.png',
    'assets/ouvrir-une-franchise-de-salle-de-sport-fitness (1).jpg',
  'assets/sports_banners.png',
  'assets/thumb-sport-36.jpg',
  'assets/vector-athletes-carrying-different-sport-icons.png',
   ];


  @override
  _CarouselWithDotsPageState createState() => _CarouselWithDotsPageState();
}

class _CarouselWithDotsPageState extends State<CarouselWithDotsPage> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = widget.imgList
        .map((item) => Container(
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(25.0),
        ),
        child: Stack(
          children: [
            Image.asset(
              item,
              fit: BoxFit.cover,
              width: 1000,
              height: 500,
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Text(
                  'Alexander wears modifaied helmet in roadraces',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ))
        .toList();

    return Column(
      children: [
        SizedBox(height: 30,),
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.imgList.map((url) {
            int index = widget.imgList.indexOf(url);
            return Container(
              width:  _current==index?20:8,
              height:  8,
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 3,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: _current == index
                    ? Colors.blue
                    : Colors.grey[300],
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}