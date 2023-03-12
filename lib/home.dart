import 'dart:ui';
import 'package:csmamoc/sidebar.dart';
import 'package:csmamoc/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.white, child: MainPage()),
      // drawer: NavDrawer(),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  List tabScreens = [
    const Center(child: Home()),
    // Center(child: UserSearchServicesPage()),
    const Center(child: Home()),
    // Center(child: UserServiceSearchPage()),
    // Center(child: UserChatListPage()),
    // Center(child: UserMyProfilePage()),
  ];

  @override
  Widget build(BuildContext context) {
    // getData(context);
    return Scaffold(
      appBar: AppBar(
        
        systemOverlayStyle: const SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.white, // navigation bar color
            systemNavigationBarIconBrightness: Brightness.dark,
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.light),
        title: Text(
          "CsVault",
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.w600),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () async {
                            var url = 'https://www.mamocollege.org/';
                            await launchUrl(Uri.parse(url),
                                mode: LaunchMode.externalNonBrowserApplication);
                          },
                          child: Text(
                            'DEPARTMENT OF COMPUTER SCIENCE',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          'Muhammed Abdurahiman Memorial Orphanage (MAMO) College',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 8),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/college_logo.jpeg',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 180,
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: NetworkImage("https://static.wixstatic.com/media/8cbac8_067169809a244f5ab286cd1068bcde8f~mv2.jpg/v1/fill/w_1349,h_589,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/8cbac8_067169809a244f5ab286cd1068bcde8f~mv2.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Text(
                  'Study Materials',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.amber),
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(children: <Widget>[
                  SizedBox(
                    height: 24,
                  ),
                  GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          var title =
                              'https://basheerpbn.wixsite.com/csmamocollege/about-4';
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Qpapers(
                                      title: "c",
                                    )),
                          );
                        },
                        child: Column(
                          children: <Widget>[
                            Container(
                                height: 72,
                                width: 72,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 255, 174, 0),
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.05),
                                          blurRadius: 3,
                                          spreadRadius: 4)
                                    ]),
                                child: Center(
                                    child: const Text(
                                  "C",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 14),
                                ))),
                            SizedBox(
                              height: 10,
                            ),
                            Text("C Programming")
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          var title =
                              'https://basheerpbn.wixsite.com/csmamocollege/about-4-1';
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Qpapers(
                                      title: "ds",
                                    )),
                          );
                        },
                        child: Column(
                          children: <Widget>[
                            Container(
                                height: 72,
                                width: 72,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.05),
                                          blurRadius: 3,
                                          spreadRadius: 4)
                                    ]),
                                child: Center(
                                    child: const Text(
                                  "DS",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 14),
                                ))),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Data Structure")
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          var title =
                              'https://basheerpbn.wixsite.com/csmamocollege/about-4-2';
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Qpapers(
                                      title: "dbms",
                                    )),
                          );
                        },
                        child: Column(
                          children: <Widget>[
                            Container(
                                height: 72,
                                width: 72,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.05),
                                          blurRadius: 3,
                                          spreadRadius: 4)
                                    ]),
                                child: Center(
                                    child: const Text(
                                  "DBMS",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 14),
                                ))),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Database")
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          var title =
                              'https://basheerpbn.wixsite.com/csmamocollege/copy-of-data-structure';
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Qpapers(title: "python")),
                          );
                        },
                        child: Column(
                          children: <Widget>[
                            Container(
                                height: 72,
                                width: 72,
                                decoration: BoxDecoration(
                                    color: Colors.deepPurpleAccent[400],
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.05),
                                          blurRadius: 3,
                                          spreadRadius: 4)
                                    ]),
                                child: Center(
                                    child: const Text(
                                  "Python",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 14),
                                ))),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Python")
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          var title =
                              'https://basheerpbn.wixsite.com/csmamocollege/copy-of-computer-graphics';
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Qpapers(
                                      title: 'java',
                                    )),
                          );
                        },
                        child: Column(
                          children: <Widget>[
                            Container(
                                height: 72,
                                width: 72,
                                decoration: BoxDecoration(
                                    color: Colors.purple,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.05),
                                          blurRadius: 3,
                                          spreadRadius: 4)
                                    ]),
                                child: Center(
                                    child: const Text(
                                  "JAVA",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 14),
                                ))),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Java")
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          var title =
                              'https://basheerpbn.wixsite.com/csmamocollege/copy-of-php';
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Qpapers(
                                      title: "android",
                                    )),
                          );
                        },
                        child: Column(
                          children: <Widget>[
                            Container(
                                height: 72,
                                width: 72,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.05),
                                          blurRadius: 3,
                                          spreadRadius: 4)
                                    ]),
                                child: Center(
                                    child: const Text(
                                  "ANDROID",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 14),
                                ))),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Android")
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          var title =
                              'https://www.csmamocollege.in/copy-of-microprocessors-and-architecture-1';
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Qpapers(
                                      title: "cg",
                                    )),
                          );
                        },
                        child: Column(
                          children: <Widget>[
                            Container(
                                height: 72,
                                width: 72,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 211, 15, 57),
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.05),
                                          blurRadius: 3,
                                          spreadRadius: 4)
                                    ]),
                                child: Center(
                                    child: const Text(
                                  "CG",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 14),
                                ))),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "COMPUTER GRAPHICS",
                              style: TextStyle(fontSize: 8),
                            )
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          var title =
                              'https://www.csmamocollege.in/copy-of-java-1';
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Qpapers(
                                      title: "php",
                                    )),
                          );
                        },
                        child: Column(
                          children: <Widget>[
                            Container(
                                height: 72,
                                width: 72,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 7, 154, 173),
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.05),
                                          blurRadius: 3,
                                          spreadRadius: 4)
                                    ]),
                                child: Center(
                                    child: const Text(
                                  "MP and A",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 14),
                                ))),
                            SizedBox(
                              height: 10,
                            ),
                            Text("MP")
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          var title =
                              'https://www.csmamocollege.in/copy-of-microprocessors-and-architecture';
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Qpapers(
                                      title: "php",
                                    )),
                          );
                        },
                        child: Column(
                          children: <Widget>[
                            Container(
                                height: 72,
                                width: 72,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 12, 55, 173),
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.05),
                                          blurRadius: 3,
                                          spreadRadius: 4)
                                    ]),
                                child: Center(
                                    child: const Text(
                                  "PHP",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 14),
                                ))),
                            SizedBox(
                              height: 10,
                            ),
                            Text("PHP")
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          var title =
                              'https://www.csmamocollege.in/general-6-1';
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Qpapers(
                                      title: "sensors",
                                    )),
                          );
                        },
                        child: Column(
                          children: <Widget>[
                            Container(
                                height: 72,
                                width: 72,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 196, 21, 196),
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.05),
                                          blurRadius: 3,
                                          spreadRadius: 4)
                                    ]),
                                child: Center(
                                    child: const Text(
                                  "Sensors",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 14),
                                ))),
                            SizedBox(
                              height: 10,
                            ),
                            Text("SENSORS")
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          var title =
                              'https://www.csmamocollege.in/copy-of-sensors-and-transducers';
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Qpapers(
                                      title: "dcof",
                                    )),
                          );
                        },
                        child: Column(
                          children: <Widget>[
                            Container(
                                height: 72,
                                width: 72,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 51, 18, 196),
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.05),
                                          blurRadius: 3,
                                          spreadRadius: 4)
                                    ]),
                                child: Center(
                                    child: const Text(
                                  "DCOF",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 14),
                                ))),
                            SizedBox(
                              height: 10,
                            ),
                            Text("DCOF")
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          var title =
                              'https://www.csmamocollege.in/copy-of-sensors-and-transducers';
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Qpapers(
                                      title: "cn",
                                    )),
                          );
                        },
                        child: Column(
                          children: <Widget>[
                            Container(
                                height: 72,
                                width: 72,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 51, 18, 196),
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.05),
                                          blurRadius: 3,
                                          spreadRadius: 4)
                                    ]),
                                child: Center(
                                    child: const Text(
                                  "CN",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 14),
                                ))),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Computer Networks",
                              style: TextStyle(fontSize: 9),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 30, right: 30, top: 10, bottom: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                      boxShadow: [
                        const BoxShadow(color: Colors.green, spreadRadius: 3),
                      ],
                    ),
                    child: TextButton(
                        onPressed: () async {
                          var title =
                              'https://basheerpbn.wixsite.com/csmamocollege/about-7';
                          var url = title;
                          // if (await canLaunchUrl(Uri.parse(url))) {
                          await launchUrl(Uri.parse(url),
                              mode: LaunchMode.externalNonBrowserApplication);
                        },
                        child: Text(
                          "Syllabus",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 20),
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 30, right: 30, top: 10, bottom: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueGrey,
                      boxShadow: [
                        const BoxShadow(color: Colors.green, spreadRadius: 3),
                      ],
                    ),
                    child: TextButton(
                        onPressed: () async {
                          var title =
                              'https://www.csmamocollege.in/question-papers';
                          var url = title;
                          // if (await canLaunchUrl(Uri.parse(url))) {
                          await launchUrl(Uri.parse(url),
                              mode: LaunchMode.externalNonBrowserApplication);
                        },
                        child: Text(
                          "Question Papers",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 20),
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 30, right: 30, top: 10, bottom: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber,
                      boxShadow: [
                        const BoxShadow(color: Colors.green, spreadRadius: 3),
                      ],
                    ),
                    child: TextButton(
                        onPressed: () async {
                          var title =
                              'https://www.csmamocollege.in/question-papers';
                          var url = title;
                          // if (await canLaunchUrl(Uri.parse(url))) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Qpapers(
                                        title: "department",
                                      )));
                        },
                        child: Text(
                          "Department Details",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 20),
                        )),
                  ),
                  Column(
                    children: [
                      TextButton(
                          onPressed: () async {
                            var url =
                                'https://www.linkedin.com/in/govind-hans-v/';
                            await launchUrl(Uri.parse(url),
                                mode: LaunchMode.externalNonBrowserApplication);
                          },
                          child: const Text(
                            "Developed By Govind Hans",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w900,
                                fontSize: 14),
                          )),
                      // Text('Developed By Govind Hans',
                      //     style: TextStyle(
                      //         color: Colors.deepOrangeAccent,
                      //         fontWeight: FontWeight.w600)),
                      Text('2nd year Bsc Computer Science MAMOC',
                          style: TextStyle(
                              color: Colors.deepOrangeAccent,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),

                  // Center(
                  //   child: Container(
                  //     margin: const EdgeInsets.all(10.0),
                  //     padding: EdgeInsets.all(10.0),
                  //     child: ClipRect(
                  //       child: Container(
                  //         color: Colors.green[100],
                  //         height: 200,
                  //         child: Padding(
                  //           padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  //           child: Column(
                  //             children: <Widget>[
                  //               Image.network(
                  //                   'https://media.geeksforgeeks.org/wp-content/cdn-uploads/20190806131525/forkPython.jpg'),
                  //               const SizedBox(height: 10),
                  //               const Text(
                  //                 'Studygram',
                  //                 style: TextStyle(
                  //                     color: Colors.green,
                  //                     fontSize: 40,
                  //                     fontWeight: FontWeight.bold),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: 4,
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class Semester extends StatelessWidget {
//   var title;
//   Semester({super.key, required this.title});
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(child: Scaffold(body: WebView(initialUrl: title)));
//   }
// }

class Qpapers extends StatefulWidget {
  var title;
  Qpapers({super.key, required this.title});

  @override
  State<Qpapers> createState() => _QpapersState();
}

class _QpapersState extends State<Qpapers> {
  @override
  Widget build(BuildContext context) {
    print(widget.title);
    return Scaffold(
      appBar: AppBar(
        title: Text("Cs Vault"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: FutureBuilder(
          future: http.get(Uri.parse(
              'https://outq-crashed-xdj6p.ondigitalocean.app/csmamoc/${widget.title}')),
          // Uri.parse('https://e4a3-103-154-54-137.in.ngrok.io/csmamoc/${widget.title}')),
          builder:
              (BuildContext context, AsyncSnapshot<http.Response> snapshot) {
            if (snapshot.hasData) {
              var data = jsonDecode(snapshot.data!.body);
              print(data);
              return ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: data
                    .length, // Replace with the actual number of items in your list
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(data[index]["title"]),
                    subtitle: Text(widget.title),
                    leading: Icon(Icons.book),
                    trailing: Icon(Icons.download),
                    onTap: () async {
                      var url = data[index]["link"];
                      // if (await canLaunchUrl(Uri.parse(url))) {
                      await launchUrl(Uri.parse(url),
                          mode: LaunchMode.externalNonBrowserApplication);
                      // } else {
                      // throw 'Could not launch $url';
                      // }
                      // print('Item tapped');
                    },
                  );

                  // return Text(data[index]["title"]);
                },
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
// return FutureBuilder(
//   future: getData(context),
//   builder: (BuildContext context, AsyncSnapshot snapshot) {
//     if (snapshot.hasData) {
//       var data = jsonDecode(snapshot.data!.body);
//       if (data.length == 0) {
//         return const Text('No services err Found ');
//       }
//       return Text('dg');
//     } else if (snapshot.hasError) {
//       return const Text('No services Found ');
//     } else {
//       return const SizedBox(
//           height: 200,
//           width: 200,
//           child: Center(child: CircularProgressIndicator()));
//     }
//   },
// );

// return FutureBuilder<http.Response>(
//   future: http.get(
//       Uri.parse('https://a931-103-154-54-137.in.ngrok.io/csmamoc/${widget.title}')),
//   builder: (BuildContext context, AsyncSnapshot<http.Response> snapshot) {
//     if (snapshot.hasData) {
//       var data = jsonDecode(snapshot.data!.body);
//       print(' called');
//       print(data);

//       return ListView.builder(
//           padding: const EdgeInsets.symmetric(horizontal: 5),
//           physics: const BouncingScrollPhysics(),
//           itemCount: data.length,
//           itemBuilder: (BuildContext context, int i) {
//             return ListTile(
//               title: Text(data[i]['title']),
//             );
//           });
//     } else if (snapshot.hasData) {
//       return Text('Error: ${snapshot.error}');
//     } else {
//       return const SizedBox(
//           height: 200,
//           width: 200,
//           child: Center(child: CircularProgressIndicator()));
//     }
//   },
// );

class Profile extends StatelessWidget {
  Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: WebView(
      initialUrl: "https://github.com/govindhansv",
      javascriptMode: JavascriptMode.unrestricted,
    )));
    // return WebView(initialUrl: "https://www.linkedin.com/in/govind-hans-v/");
  }
}

class DBMS extends StatelessWidget {
  DBMS({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text('Previous year Qpaper'),
          )
        ],
      ),
    );
  }
}

Future getData(BuildContext context) async {
  print(' called');
  var response = await http.get(
      Uri.parse('https://outq-crashed-xdj6p.ondigitalocean.app/csmamoc/dbms'));
  print(response);
  var jsonData = jsonDecode(response.body);
  print(jsonData);
  // print(userid);
}
/*
.
Expanded(
                    flex: 3,
                    child: ListView.builder(
                      padding:
                          const EdgeInsets.symmetric(horizontal: tDefaultSize),
                      physics: const BouncingScrollPhysics(),
                      itemCount: data.length,
                      itemBuilder: (BuildContext context, int i) {
                        return Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(data[i]['img']),
                                    width: 60,
                                    height: 50,
                                  ),
                                  // child: const Image(
                                  //     image: AssetImage(
                                  //         'assets/images/userImage.png'))
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        data[i]['name'],
                                        textAlign: TextAlign.left,
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1,
                                      ),
                                      Text(
                                        data[i]['storename'],
                                        textAlign: TextAlign.left,
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2,
                                      ),
                                      // Text('₹7',
                                      //     textAlign: TextAlign.left,
                                      //     style: Theme.of(context)
                                      //         .textTheme
                                      //         .headline5),
                                    ]),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  width: 100,
                                  height: 25,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(17.5),
                                      topRight: Radius.circular(17.5),
                                      bottomLeft: Radius.circular(17.5),
                                      bottomRight: Radius.circular(17.5),
                                    ),
                                    gradient: LinearGradient(
                                      begin: Alignment(0.8459399938583374,
                                          0.1310659646987915),
                                      end: Alignment(-0.1310659646987915,
                                          0.11150387674570084),
                                      colors: [
                                        Color.fromRGBO(0, 81, 255, 1),
                                        Color.fromRGBO(0, 132, 255, 1)
                                      ],
                                    ),
                                  ),
                                  child: Center(
                                      child: TextButton(
                                    onPressed: () {
                                      // Get.to(() => UserViewSingleStorePage(),
                                      //     arguments: [
                                      //       data[i]['storeid'],
                                      //     ]);
                                      Get.to(() => const ShopBookingPage(),
                                          arguments: [
                                            data[i]['ownerid'],
                                            data[i]['type'],
                                            data[i]['storeid'],
                                            data[i]['name'],
                                            data[i]['price'],
                                            data[i]['storename'],
                                            data[i]['start'],
                                            data[i]['end'],
                                            data[i]['img'],
                                          ]);
                                    },
                                    child: Text(
                                      "Book",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 10,
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.w600,
                                        height: 1,
                                      ),
                                    ),
                                  )),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ); */