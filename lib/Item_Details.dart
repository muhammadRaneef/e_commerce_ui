import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  Details({Key? key}) : super(key: key);
  List m = [
    "https://i5.walmartimages.com/asr/750fed15-4617-40e0-b069-216eda3808c1.d77bcaec85fa64747464272d8a8cd240.jpeg",
    "https://st4.depositphotos.com/12982378/19868/i/600/depositphotos_198688066-stock-photo-cozy-empty-modern-grey-armchair.jpg",
    "https://st4.depositphotos.com/16376404/22740/i/600/depositphotos_227401722-stock-photo-modern-gray-chair-textile-seat.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Chairs", style: TextStyle(fontWeight: FontWeight.w600)),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.density_medium_rounded),
          )
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 300,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                ),
                items: m
                    .map((i ) => Container(
                            child: Container(
                          margin: EdgeInsets.all(5.0),
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              child: Stack(
                                children: <Widget>[
                                  Image.network(i,
                                      fit: BoxFit.cover, width: 1000.0),
                                  Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color.fromARGB(200, 0, 0, 0),
                                          Color.fromARGB(0, 0, 0, 0)
                                        ],
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                      ),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 20.0)


                                  ),
                                ],
                              )),

                        )))
                    .toList(),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Juliet Rowley \n Lounge sofa",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 198.0),
                child: Icon(
                  Icons.favorite,
                  size: 20,
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "Price",
                  style: TextStyle(color: Colors.pinkAccent, fontSize: 22),
                ),
              )
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            height: 50,
            width: 340,
            decoration: BoxDecoration(color: Colors.black),
            child: Center(
                child: Text("ADD TO CART",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.white))),
          )
        ],
      ),
    );
  }
}
