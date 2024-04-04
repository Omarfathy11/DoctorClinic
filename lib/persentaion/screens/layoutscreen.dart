import 'package:flutter/material.dart';
import 'package:medicalclinic/persentaion/screens/categoryscreen.dart';
import 'package:medicalclinic/persentaion/screens/homepage.dart';
import 'package:medicalclinic/style/colors.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int selctedindex = 0;
  List<Widget> widgetspages = [
    HomePage(),
    CategoryScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(),
      body: widgetspages.elementAt(selctedindex),
    );
  }

  BottomNavigationBar _bottomNavigationBar() => BottomNavigationBar(
          currentIndex: selctedindex,
          onTap: (index) {
            setState(() {
              selctedindex = index;
            });
          },
          type: BottomNavigationBarType
              .fixed, // بيخلي label تظهر // have fixed width
          showSelectedLabels: true, // مش بيظهر ال label ال محددها
          showUnselectedLabels: true,
          backgroundColor: kTextColor,
          selectedLabelStyle:TextStyle(color: Colors.white),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          selectedFontSize: 20,
          items: [
            _bottomBarItem(
              icon: "assets/icons/Group.png",
              label: "Home",
            ),
            _bottomBarItem(
              icon: "assets/icons/home-category 1.png",
              label: "Category",
            ),
            _bottomBarItem(icon: "assets/icons/watch.png", label: "Book"),
            _bottomBarItem(
                icon: "assets/icons/fi-rr-user.png", label: "Profile"),
          ]);

  BottomNavigationBarItem _bottomBarItem(
          {required String icon, required String label}) =>
      BottomNavigationBarItem(
          icon: Image.asset(
            icon,
            color: Colors.white,
          ),
          activeIcon: Image.asset(
            icon,
            color: Colors.white,
          ),
          label: label);
}
