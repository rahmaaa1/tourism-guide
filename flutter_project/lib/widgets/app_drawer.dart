import 'package:flutter/material.dart';
import 'package:flutter_project/screens/favourite_page.dart';
import 'package:flutter_project/screens/mytrips_page.dart';
import 'package:flutter_project/screens/about_page.dart';
import 'package:flutter_project/screens/home_page.dart';

//import:'package:flutter/src/widgets/navigator.dart';
class Appdrawer extends StatelessWidget {
  const Appdrawer({super.key});

  Widget newMethod(String title, IconData icon, onTapLink) {
    return ListTile(
      leading: Icon(
        icon,
        size: 15,
        color: Colors.blue,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontFamily: 'MadimiOne',
          color: Color.fromARGB(255, 22, 23, 82),
        ),
      ),
      onTap: onTapLink,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(children: [
      Container(
          height: 75,
          width: double.infinity,
          padding: EdgeInsets.only(top: 40),
          alignment: Alignment.center,
          color: Color.fromARGB(255, 121, 155, 228),
          child: Text(
            'OTHERS',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'MadimiOne',
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 22, 23, 82),
            ),
          )),
      SizedBox(height: 20),
      newMethod(
        'Home Page',
        Icons.home,
        () {
          Navigator.of(context).pushReplacementNamed(Homepage.screenRoute);
        },
      ),
      newMethod(
        'Favourite ♡',
        Icons.heat_pump_rounded,
        () {
          Navigator.of(context).pushReplacementNamed(Favourite.screenRoute);
        },
      ),
      newMethod(
        'My Trips +',
        Icons.card_travel_rounded,
        () {
          Navigator.of(context).pushReplacementNamed(Mytrips.screenRoute);
        },
      ),
      newMethod(
        'About',
        Icons.arrow_forward_sharp,
        () {
          Navigator.of(context).pushReplacementNamed(About.screenRoute);
        },
      ),
    ]));
  }
}
