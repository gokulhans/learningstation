// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:share_plus/share_plus.dart';

// class NavDrawer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: <Widget>[
//           DrawerHeader(
//             child: Center(
//               child: Container(
//                 height: 100,
//                 width: 100,
//                 decoration: const BoxDecoration(
//                     image: DecorationImage(
//                   fit: BoxFit.cover,
//                   image: AssetImage('assets/logo.png'),
//                 )),
//               ),
//             ),
//           ),
//           ListTile(
//             leading: Icon(Icons.input),
//             title: Text('Welcome'),
//             onTap: () {
//               Navigator.of(context).pop();
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.telegram),
//             title: Text('Telegram'),
//             onTap: () async {
//               var url = "https://t.me/studygramcu";
//               if (await canLaunchUrl(Uri.parse(url))) {
//                 await launchUrl(Uri.parse(url),
//                     mode: LaunchMode.externalNonBrowserApplication);
//               } else {
//                 throw 'Could not launch $url';
//               }
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.whatsapp),
//             title: Text('Whatsapp'),
//             onTap: () async {
//               var url = "https://wa.me/message/5XWWJKY6UH5EG1";
//               if (await canLaunchUrl(Uri.parse(url))) {
//                 await launchUrl(Uri.parse(url),
//                     mode: LaunchMode.externalNonBrowserApplication);
//               } else {
//                 throw 'Could not launch $url';
//               }
//             },
//           ),
//           ListTile(
//             leading: Icon(FontAwesomeIcons.instagram),
//             title: Text('Instagram'),
//             onTap: () async {
//               var url = "https://instagram.com/studygramcu?igshid=YmMyMTA2M2Y=";
//               if (await canLaunchUrl(Uri.parse(url))) {
//                 await launchUrl(Uri.parse(url),
//                     mode: LaunchMode.externalNonBrowserApplication);
//               } else {
//                 throw 'Could not launch $url';
//               }
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.copyright_sharp),
//             title: Text('Copyright'),
//             onTap: () => {Navigator.of(context).pushNamed('copyright')},
//           ),
//           // ListTile(
//           //   leading: Icon(Icons.favorite,color: Colors.red,),
//           //   title: Text('Support Us',style: TextStyle(color: Colors.red,fontWeight: FontWeight.w900),),
//           //   onTap: () => {Navigator.of(context).pushNamed('support')},
//           // ),
//           ListTile(
//             leading: Icon(Icons.info),
//             title: Text('About Us'),
//             onTap: () => {Navigator.of(context).pushNamed('about')},
//           ),
//           ListTile(
//             leading: Icon(Icons.share),
//             title: Text('Share App'),
//             onTap: () async {
//               const message =
//                   "Studygram is a place for calicut university students. Previous Year Question Papers ,Studymaterials,Video Classes are Available";
//               const appurl =
//                   "https://play.google.com/store/apps/details?id=com.gbroz.studygram";
//               await Share.share("$message \n $appurl");
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }