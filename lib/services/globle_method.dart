import 'package:flutter/material.dart';

class GlobalMethod {
  Future<void> showDialogg(String title, String subtitle, Function ftc,BuildContext context) async {
    showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            title: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 6.0),
                  child: Image.network(
                    'https://gst-online.com/wp-content/uploads/2019/02/2000px-Feedbin-Icon-error.svg_.png',
                    height: 25,
                    width: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(title),
                )
              ],
            ),
            content: Text(subtitle),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Cancel')),
              TextButton(
                  onPressed: () {
                    ftc();
                    Navigator.pop(context);
                  },
                  child: Text('ok')),
            ],
          );
        });
  }
}
