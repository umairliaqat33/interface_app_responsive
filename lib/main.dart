import 'package:flutter/material.dart';
import 'IconContent.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InterfaceResponsive(),
    );
  }
}

class InterfaceResponsive extends StatefulWidget {
  const InterfaceResponsive({Key? key}) : super(key: key);

  @override
  _InterfaceResponsiveState createState() => _InterfaceResponsiveState();
}

class _InterfaceResponsiveState extends State<InterfaceResponsive> {
  @override
  int ind = 0;
  var tabs = [('Menu'), ('Inbox'), ('Home'), ('Recent')];
  Widget build(BuildContext context) {
    var wdt = MediaQuery.of(context).size.width;
    var het = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.yellow,
                width: 4,
              )),
              width: 800,
              height: het / 4,
              child: Image.asset(
                'images/Screenshot.png',
                height: 150,
                fit: BoxFit.fill,
                width: 900,
              ),
            ),
            Container(
              margin: EdgeInsets.all(30),
              child: Container(
                height: het / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconContent(
                        "Choose Your Car",
                        "Hotel,Guest house,room etc",
                        "Rent a Car",
                        "Short Stay",
                        FontAwesomeIcons.car,
                        FontAwesomeIcons.bed,
                        het / 2,
                        wdt),
                    IconContent(
                        "coming soon",
                        "Coming Soon",
                        "Hostel",
                        "Tour",
                        FontAwesomeIcons.hotel,
                        FontAwesomeIcons.mapPin,
                        het / 2,
                        wdt),
                    IconContent(
                        "Choose Your Car",
                        "Provide Your Services",
                        "Rent a Home",
                        "Provider",
                        FontAwesomeIcons.home,
                        FontAwesomeIcons.user,
                        het / 2,
                        wdt),
                  ],
                ),
              ),
            ),
          ],
        )),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.yellow,
          type: BottomNavigationBarType.fixed,
          currentIndex: ind,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              // backgroundColor: Colors.blue,
              label: 'Menu',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              // backgroundColor: Colors.blue,
              label: 'Inbox',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              // backgroundColor: Colors.blue,
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'Recent',
              // backgroundColor: Colors.blue,
            ),
          ],
          onTap: (index) {
            print(wdt);
            print(het);

            setState(() {
              ind = index;
            });
          },
        ),
      ),
    );
  }
}
