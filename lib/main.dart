import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white54,
          centerTitle: true,
          title: const Text(
            'Food Choose ?',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: FoodList(),
      ),
    );
  }
}

class FoodList extends StatefulWidget {
  FoodList({Key? key}) : super(key: key);

  @override
  State<FoodList> createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  List<String> suopName = [
    'Sebze Çorbası',
    'Domates Çorbası',
    'Şehriye Çorbası',
    'Yoğurtlu Çorba',
    'Tarhana Çorbası'
  ];
  List<String> foodName = [
    'Fırında Tavuk',
    'Mantı',
    'Pizza',
    'Somon Salata',
    'Tas Kebabı'
  ];
  List<String> dessertsName = [
    'Profiterol',
    'Kadayıf',
    'Revani',
    'Sütlaç',
    'Ekmek Tatlısı'
  ];

  void momo() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: FlatButton(
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: momo,
                child: Image.asset('assets/corba_$corbaNo.jpg'),
              ),
            ),
          ),
          Text(
            suopName[corbaNo - 1],
            style: TextStyle(fontSize: 18, color: Colors.blueGrey),
          ),
          Container(
            width: 200,
            child: const Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: FlatButton(
                  highlightColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: momo,
                  child: Image.asset('assets/yemek_$yemekNo.jpg')),
            ),
          ),
          Text(
            foodName[yemekNo - 1],
            style: TextStyle(fontSize: 18, color: Colors.blueGrey),
          ),
          Container(
            width: 200,
            child: const Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: FlatButton(
                  onPressed: momo,
                  child: Image.asset('assets/tatli_$tatliNo.jpg')),
            ),
          ),
          Text(
            dessertsName[tatliNo - 1],
            style: TextStyle(fontSize: 18, color: Colors.blueGrey),
          ),
          Container(
            width: 200,
            child: const Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
