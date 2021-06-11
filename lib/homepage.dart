import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 60),
              width: double.infinity,
              color: Colors.blue[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1622106509587-1c5d60316802?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80')),
                  Text('Adam Marsh', 
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.black)),
                  Text('Student | Noob programmer | Cool guy', 
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700]))
                ],
              ),
            ),
            Text(' '),
            Text(
              'About',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
                color: Colors.black87
              ),
              ),
            Text(
              'Yo app developers BEWARE!! There\'s a new guy in town! Now if you are a programmer (which you probably are),you might be wondering who am I...Well think of me as a noob trying to \'act\' LIKE a god',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
                color: Colors.black87
              )
            )
          ],
        )),
        appBar: AppBar(
          title: const Text(
            'My Profile',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blue[700],
          actions: <Widget> [
            IconButton(
              icon: const Icon(Icons.menu), 
              onPressed: () { 
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("No you can't touch this!")));
               },)
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blueAccent
        ),
        BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'NotHome',
              backgroundColor: Colors.blueAccent
        ),
        BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Nothingness',
              backgroundColor: Colors.blueAccent
        ),
          ]),
    );
  }
}