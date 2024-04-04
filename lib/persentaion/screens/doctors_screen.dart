import 'package:flutter/material.dart';

import 'package:medicalclinic/style/colors.dart';

class DoctorsScreen extends StatelessWidget {
  List images = [
    {
      "image": "assets/images/mohamed 1.png",
      "asset": "assets/images/Frame 1966.png",
      "title": "Dr: Mohamed saad",
      "subtitle": "5 Years Experiece"
    },
    {
      "image": "assets/images/adel 1.png",
      "asset": "assets/images/Frame 1966.png",
      "title": "Dr: Adel mohamed ",
      "subtitle": "12 Years Experiece"
    },
    {
      "image": "assets/images/fatema 1.png",
      "asset": "assets/images/Frame 1966.png",
      "title": "Dr: Fatema amr",
      "subtitle": "12 Years Experiece"
    },
    {
      "image": "assets/images/alaa 2.png",
      "asset": "assets/images/Frame 1966.png",
      "title": "Dr: Alaa Mohamed",
      "subtitle": "\$ 20.99"
    },
  ];
  List doctors = [
    {
      "image": "assets/images/osama 3.png",
      "asset": "assets/images/Frame 1966.png",
      "title": "Dr: Osama ali",
      "subtitle": "5 Years Experiece"
    },
    {
      "image": "assets/images/sara 1 (1).png",
      "asset": "assets/images/Frame 1966.png",
      "title": "Dr: Sara Selem",
      "subtitle": "12 Years Experiece"
    },
    {
      "image": "assets/images/may 3.png",
      "asset": "assets/images/Frame 1966.png",
      "title": "Dr: May morad",
      "subtitle": "12 Years Experiece"
    },
    {
      "image": "assets/images/alaa 2.png",
      "asset": "assets/images/Frame 1966.png",
      "title": "Dr: May morad",
      "subtitle": "\$ 20.99"
    },
  ];
  DoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kTextColor,
        actions: [Image.asset('assets/icons/layer1.png')],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Popular Doctor",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: myColor,
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: myColor,
                      ),
                    ),
                    Icon(Icons.arrow_forward)
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
              height: 250,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: images.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 5),
                          height: 190,
                          width: 135,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: kTextColor,
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.white,
                                    blurRadius: 4,
                                    spreadRadius: 2)
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Align(
                                    child: Container(
                                      margin: const EdgeInsets.all(8),
                                      height: 122,
                                      width: 293,
                                      decoration: const BoxDecoration(
                                          color: kTextColor,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.white,
                                                blurStyle: BlurStyle.solid,
                                                spreadRadius: 1)
                                          ]),
                                      child: Center(
                                          child: Image.asset(
                                        images[index]['image'],
                                        height: 115,
                                        width: 113,
                                      )),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      margin: const EdgeInsets.all(8),
                                      height: 60,
                                      width: 60,
                                      child: const Center(
                                        child: Icon(
                                          Icons.favorite,
                                          color: kTextColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Center(
                                    child: Text(
                                      images[index]['title'],
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Text(
                                    images[index]["subtitle"],
                                    style: const TextStyle(
                                        color: myColory,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Row(
                                      children: const [
                                        SizedBox(
                                            height: 10,
                                            width: 10,
                                            child: Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            )),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        SizedBox(
                                            height: 13,
                                            width: 13,
                                            child: Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            )),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        SizedBox(
                                            height: 10,
                                            width: 10,
                                            child: Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            )),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        SizedBox(
                                            height: 13,
                                            width: 13,
                                            child: Icon(
                                              Icons.star,
                                              color: Colors.white,
                                            )),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        SizedBox(
                                            height: 13,
                                            width: 13,
                                            child: Icon(
                                              Icons.star,
                                              color: Colors.white,
                                            )),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  })),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Container(
                decoration: const BoxDecoration(
              color: kTextColor,
              boxShadow: [BoxShadow(color: Colors.grey, spreadRadius: 1)],
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Book a Doctors",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: myColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
              height: 350,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: images.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          height: 150,
                          width: 390,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: kTextColor,
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.white,
                                    blurRadius: 4,
                                    spreadRadius: 2)
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 200),
                                    child: Align(
                                      child: Container(
                                        margin: const EdgeInsets.all(8),
                                        decoration: const BoxDecoration(
                                            color: kTextColor),
                                        child: Image.asset(
                                          doctors[index]['image'],
                                          fit: BoxFit.fill,
                                          height: 134,
                                          width: 125,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 220),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        height: 60,
                                        child: Center(
                                            child: Text(
                                          doctors[index]['title'],
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        )),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 260,
                                      top: 40,
                                    ),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        height: 60,
                                        child: const Center(
                                            child: Text(
                                          'Speech',
                                          style: TextStyle(
                                              color: color,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                        )),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 95, left: 15),
                                   
                                        child: Image.asset(
                                            images[index]["asset"])),
                                  
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    );
                  })),
        ],
      ),
    );
  }
}
