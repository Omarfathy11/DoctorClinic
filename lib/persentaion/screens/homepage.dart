import 'package:flutter/material.dart';
import 'package:medicalclinic/persentaion/screens/doctors_screen.dart';
import 'package:medicalclinic/style/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List Categories = [
      {
        "title": "Speech",
      },
      {
        "title": "Autism",
      },
      {
        "title": "Learning",
      },
      {
        "title": "intillegence",
      },
      {
        "title": "Behavior",
      },
      {
        "title": "Skills",
      },
    ];
    List images = [
      {
        "image": "assets/images/may 3.png",
        "asset": "assets/images/Frame 1966.png",
        "title": "Dr: May morad",
        "subtitle": "\$ 20.99"
      },
      {
        "image": "assets/images/osama 3.png",
        "asset": "assets/images/Frame 1966.png",
        "title": "Dr: Osama ali",
        "subtitle": "\$ 20.99"
      },
      {
        "image": "assets/images/sara 1 (1).png",
        "asset": "assets/images/Frame 1966.png",
        "title": "Dr: Sara Selem",
        "subtitle": "\$ 20.99"
      },
      {
        "image": "assets/images/alaa 2.png",
        "asset": "assets/images/Frame 1966.png",
        "title": "Dr: Alaa Mohamed",
        "subtitle": "\$ 20.99"
      },
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: SizedBox(
            height: 30,
            width: 20,
            child: Image.asset(
              'assets/images/Group 13994.png',
            )),
        title: const Text(
          'Markaz ElAmal',
          style: TextStyle(color: myColor, fontFamily: "Peralta", fontSize: 16),
        ),
        actions: [
          InkWell(
              child: Image.asset(
            'assets/images/Group 13995 (1).png',
          )),
          InkWell(
              child: Image.asset(
            'assets/images/Vector.png',
            color: kTextColor,
          )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(9.0),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    width: 310,
                    child: TextFormField(
                      onChanged: (input) {},
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                        ),
                        hintText: "Search",
                        hintTextDirection: TextDirection.ltr,
                        hintStyle: TextStyle(
                            color: myColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 24),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Image.asset(
                    'assets/images/Frame 1963.png',
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/Mask group.png",
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Category",
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
                        fontWeight: FontWeight.w500,
                        color: myColor,
                      ),
                    ),
                    Icon(Icons.arrow_forward)
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 50,
                width: double.infinity,
                child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    itemCount: Categories.length,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: ((context, index) {
                      return const SizedBox(
                        width: 15,
                      );
                    }),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            color: kTextColor,
                            borderRadius: BorderRadius.circular(16)),
                        height: 61,
                        width: 150,
                        child: Center(
                          child: Text(
                            Categories[index]["title"],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                      );
                    })),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Doctors",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: myColor,
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: myColor,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DoctorsScreen()));
                        },
                        icon: const Icon(Icons.arrow_forward))
                  ],
                ),
              ],
            ),
            SizedBox(
                height: 280,
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
                                horizontal: 7, vertical: 5),
                            height: 270,
                            width: 318,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
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
                                            color: Colors.white),
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
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 95, left: 15),
                                      child:
                                          Image.asset(images[index]["asset"]),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        images[index]['title'],
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      const Text(
                                        '12 experience',
                                        style: TextStyle(color: myColory),
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      Text(
                                        images[index]['subtitle'],
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      const Text('Know more...',
                                          style: TextStyle(color: myColory))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
