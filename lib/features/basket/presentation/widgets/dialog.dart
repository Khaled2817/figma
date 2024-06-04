
 import 'package:flutter/material.dart';
import 'package:untitled/core/constants/constants.dart';
 showDialogExample() {
  showDialog(
    context: Constants.globalContext(),
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Title'),
        content: Text('This is the content of the dialog.'),
        actions: <Widget>[
          // (
          //   child: Text('OK'),
          //   onPressed: () {
          //     Navigator.of(context).pop();
          //   },
          // ),
        ],
      );
    },
  );
}