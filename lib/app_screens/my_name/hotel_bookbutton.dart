import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotelBookButton extends StatelessWidget {
  const HotelBookButton({Key? key}) : super(key: key);

  void alertMsg(BuildContext context) {
    var alertDialog = const AlertDialog(
      title: Text("Room Booked Successfully"),
      content: Text("Have a nice sleep"),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) => alertDialog
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          padding: const EdgeInsets.all(12),
          textStyle: const TextStyle(fontSize: 30),
        ),
        child: const Text(
          "Book Your Room",
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        onPressed:() => {
          alertMsg(context)
        },
      ),
    );
  }
}
