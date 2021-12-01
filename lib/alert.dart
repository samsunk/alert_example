import 'package:flutter/material.dart';

class AlertExample extends StatefulWidget {
  const AlertExample({Key? key}) : super(key: key);

  @override
  _AlertExampleState createState() => _AlertExampleState();
}

class _AlertExampleState extends State<AlertExample> {
  //functions for alert dialog
  showAlertDialog(BuildContext context) {
    //set up the buttons
    Widget okbtn = ElevatedButton(
      onPressed: () {},
      child: const Text('ok'),
    );
    Widget cancelbtn = ElevatedButton(
      onPressed: () {
        //to dismiss dialog
        Navigator.of(context).pop();
      },
      child: const Text('Cancel'),
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: Colors.teal,
      title: const Text('AlertDialog'),
      content: const Text('would you like to continue?'),
      actions: [
        okbtn,
        cancelbtn,
      ],
    );
    //show the Dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showAlertDialog(context);
          },
          child: const Text('show'),
        ),
      ),
    );
  }
}
