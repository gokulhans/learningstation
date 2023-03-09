import 'package:csmamoc/home.dart';
import 'package:csmamoc/resources.dart';
import 'package:csmamoc/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CsVault',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const Exithome(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  List tabScreens = [
    const Center(child: Home()),
    const Center(child: Resources()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          unselectedLabelStyle: TextStyle(
            color: Colors.blueGrey[50],
          ),
          selectedIconTheme: IconThemeData(
            color: Colors.green,
          ),
          selectedLabelStyle: TextStyle(
            color: Colors.green,
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.blueGrey[200],
          ),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          iconSize: 20,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.search),
            //   label: 'Search',
            // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Resources',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.person),
            //   label: 'Profile',
            // ),
          ]),
      body: tabScreens.elementAt(currentIndex),
    );
    // appBar: AppBar(
    //   title: Text(widget.title),
    // ),
    // body:  Home());
  }
}

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
                'Do you want to close MAMO App ?',
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
        child: Scaffold(
          backgroundColor: Colors.white,
          body: MyHomePage(
            title: "fvx",
          ),
        ));
  }
}
