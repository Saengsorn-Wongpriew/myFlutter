import 'package:app_screening/app_screens/my_name/hotel_bookbutton.dart';
import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage("lib/images/hotel.webp"),
      width: 256,
      height: 350,
    );
  }

}

class MyName extends StatelessWidget {
  const MyName({Key? key}) : super(key: key);

  myText(String textInput) {
    return Text(
      textInput,
      textDirection: TextDirection.ltr,
      style: const TextStyle(
          decoration: TextDecoration.none,
          fontFamily: 'Kanit',
          fontSize: 23,
          fontWeight: FontWeight.w600,
          color: Colors.grey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: const Color.fromARGB(255, 25, 25, 25),
        margin: const EdgeInsets.all(25.0),
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(child: myText("The Sweet Hotel")),
                Expanded(child: myText("\$15 per night")),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(child: myText("Location :")),
                Expanded(child: myText("Texas")),
              ],
            ),
            const MyImage(),
            const HotelBookButton(),
          ],
        ),
      ),
    );
  }
}