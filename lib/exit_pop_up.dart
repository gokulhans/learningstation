import 'package:csmamoc/app_home.dart';
import 'package:csmamoc/welcome_screen.dart';
import 'package:flutter/material.dart';


class Exithome extends StatelessWidget {
  const Exithome({super.key});

  @override
  Widget build(BuildContext context) {
    Future<bool> showExitPopup() async {
      return await showDialog(
            //show confirm dialogue
            //the return value will be from "Yes" or "No" options
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Exit App'),
              content: const Text(
                'Do you want to close CSMAMOC ?',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              actions: [
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text('No'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  //return true when click on "Yes"
                  child: const Text('Yes'),
                ),
              ],
            ),
          ) ??
          false; //if showDialouge had returned null, then return false
    }

    return WillPopScope(
        onWillPop: showExitPopup,
        child: const Scaffold(
          body: WelcomeScreen(),
        ));
  }
}
