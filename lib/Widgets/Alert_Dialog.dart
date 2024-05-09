import 'package:flutter/material.dart';

class AppAlertDialog extends StatelessWidget {
  final String title, content;
  final Orientation orientation;

  const AppAlertDialog(
      {super.key,
        required this.title,
        required this.content,
        required this.orientation});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontFamily: "WorkSans"),
        ),
      ),
      content: Text(
        content,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 18, fontFamily: "WorkSans"),
      ),
      contentPadding: const EdgeInsets.all(40.00),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        SizedBox(

          width: MediaQuery.of(context).size.width * 0.9,
          height: (orientation == Orientation.portrait)
              ? MediaQuery.of(context).size.height * 0.05
              : MediaQuery.of(context).size.height * 0.19,
          child:ElevatedButton(

    onPressed: () {
      Navigator.pop(context);
    },
    style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.red), // Change color here
    ),
    child: const Text("OKEY",style: TextStyle(
    color: Colors.white
    ),),
    ),
        )
      ],
    );
  }
}