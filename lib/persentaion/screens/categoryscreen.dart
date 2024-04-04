import 'package:flutter/material.dart';
import 'package:medicalclinic/style/colors.dart';

class CategoryScreen extends StatelessWidget {
  List images = [
    {
      "image": "assets/images/تخاطب 1.png",
      "title": "Speech",
    },
    {
      "image": "assets/images/توحد 1.png",
      "title": "Autism",
    },
    {
      "image": "assets/images/صعوبه تعلم 1.png",
      "title": "Learning difficulties",
    },
    {
      "image": "assets/images/اختبار ذكاء 1.png",
      "title": "Intelligence test",
    },
    {
      "image": "assets/images/تعديل سلوك 1.png",
      "title": "Behavior modification",
    },
    {
      "image": "assets/images/تنميه مهارات 1.png",
      "title": "Skills development",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kTextColor,
        title: const Center(
            child: Text(
          "Category",
          style: TextStyle(fontSize: 24),
        )),
        actions: [Image.asset('assets/icons/layer1.png')],
      ),
      body: ListView(
        children: [
          GridView.builder(
            itemCount: images.length,
            padding: const EdgeInsets.all(10),
            physics:
                const NeverScrollableScrollPhysics(), // عشان يوقف الاسكرول في الليست فيو
            shrinkWrap: true, //  عشان يوقف الاسكرول في الليست فيو وتظهر الصورة
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisExtent: 230),
            itemBuilder: (context, i) {
              return Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                  height: 216,
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: kTextColor,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.white, blurRadius: 4, spreadRadius: 2)
                      ]),
                  child: Column(children: [
                    Stack(children: [
                      Align(
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(color: kTextColor),
                          child: Center(
                              child: Image.asset(
                            images[i]['image'],
                            height: 115,
                            width: 166,
                          )),
                        ),
                      ),
                    ]),
                    
                       Center(
                        child: Text(
                          images[i]['title'],
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    
                    Padding(
                      padding: const EdgeInsets.only(left: 120,top: 5, bottom: 4),
                      child: Image.asset('assets/icons/icon.png'),
                    )
                  ]));
            },
          ),
        ],
      ),
    );
  }
}
