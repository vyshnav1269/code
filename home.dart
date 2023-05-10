import 'package:flutter/material.dart';

import '../loginhere/loginpage.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
     actions: [
       PopupMenuButton(
         elevation: 50,
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.all(Radius.circular(10)),
         ),
           itemBuilder: (context) => [
         PopupMenuItem(child: Column(
           children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: ListTile(
                 leading: Icon(Icons.home),
                 title: Text('Home',
                 style: TextStyle(
                   color: Colors.grey
                 ),),
               ),
             ),
             Divider()
           ],
         )),
         PopupMenuItem(child: Column(
           children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: ListTile(
                 leading: Icon(Icons.chat_sharp),
                 title: Text('chats',
                 style: TextStyle(

                   color: Colors.grey
                 ),),
               ),
             ),
             Divider()
           ],
         )),
             PopupMenuItem(child: Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ListTile(
                     leading: Icon(Icons.bar_chart),
                     title: Text('statistics',
                     style:TextStyle(
                       color: Colors.grey
                     ) ,),
                   ),
                 ),
                 Divider()
               ],
             )),
             PopupMenuItem(child: Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ListTile(
                     onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                     },
                     leading: Icon(Icons.logout),
                     title: Text('Sign out',
                     style: TextStyle(
                       color: Colors.grey
                     ),),
                   ),
                 )
               ],
             )),
       ]),
     ],
      ),
    );
  }
}
