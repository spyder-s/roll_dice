import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  roll() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dicee'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Image(
                            image: AssetImage(
                                "assets/images/dice-png-${leftDiceNumber}.png")))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Image(
                            image: AssetImage(
                                'assets/images/dice-png-${rightDiceNumber}.png'))))
              ],
            ),
            RaisedButton(
              child: Text("Roll "),
              onPressed: roll,
              color: Colors.red,
              textColor: Colors.white,
              splashColor: Colors.grey,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            )
          ],
        ),
      ),
    );
  }
}
