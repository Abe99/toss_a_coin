import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const TossACoin());
}

class TossACoin extends StatefulWidget {
  const TossACoin({super.key});

  @override
  State<TossACoin> createState() => _TossACoinState();
}

class _TossACoinState extends State<TossACoin> {
  int coinNumber = 1;
  void throwCoin() {
      setState(() {
        coinNumber = Random().nextInt(2)+1;
              });

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade400,
          title: Center(child: const Text("Toss a coin")),
        ),
        body: Center(
          child: TextButton(
            onPressed: () {
            throwCoin();
            },
            child: Image.asset('images/coin_$coinNumber.png'),
          ),
        ),
      ),
    );
  }
}
