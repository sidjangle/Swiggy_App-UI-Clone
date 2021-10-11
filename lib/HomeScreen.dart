import 'package:flutter/material.dart';
import 'package:swiggy/topbar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List data = [
    {'name': 'Enjoy your favourite treats', 'image': 'assets/1.png'},
    {'name': 'Daily needs in 15-30 mins', 'image': 'assets/2.png'},
    {'name': 'Pick up or send anything', 'image': 'assets/3.png'},
    {'name': 'Fresh meat & seafood', 'image': 'assets/4.png'},
    {'name': 'Feast smart this Nutrition Week ', 'image': 'assets/5.png'},
    {'name': 'Handpicked gourmet restaurants ', 'image': 'assets/6.png'},
  ];

  List footer = [
    {'image': 'assets/footer1.png'},
    {'image': 'assets/footer2.png'},
    {'image': 'assets/footer3.png'},
    {'image': 'assets/footer4.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/location.png',
                  width: 40,
                ),
                Text(
                  'Others',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w800),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Mumbai,Maharashtra',
                  style: TextStyle(fontSize: 15, color: Colors.grey.shade500),
                ),
              ],
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(
                  'assets/offer.png',
                  width: 40,
                ),
                Text(
                  'Offers',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w800),
                ),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      data.length,
                      (index) => TopBar(
                            data: data[index]['image'],
                          )),
                )),
            Image.asset('assets/banner.png'),
            Row(
              children: [
                Image.asset(
                  'assets/thums.png',
                  width: 50,
                ),
                Text(
                  'Top Picks For You',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.w800),
                )
              ],
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      footer.length,
                      (index) => TopBar(
                            data: footer[index]['image'],
                          )),
                )),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      data.length,
                      (index) => TopBar(
                            data: data[index]['image'],
                          )),
                )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              label: '',
              icon: Image.asset(
                'assets/swiggy.png',
                width: 40,
              )),
          BottomNavigationBarItem(label: '', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: '', icon: Icon(Icons.shopping_bag))
        ],
      ),
    );
  }
}
