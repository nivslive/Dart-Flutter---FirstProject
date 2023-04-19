import 'package:flutter/material.dart';

import '../widgets/category_selector.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {},       
        ),
        title: const Text(
          'Chats',
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      elevation: 0.0,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.search),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {},       
        )
      ],
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Container(
            height: 500.0,
            decoration: const BoxDecoration(
              //color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              ),
            ),
        ]
      ),
    );
  }
}