import 'package:flutter/material.dart';

import '../services/flame_operations.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/flame_options.dart';

class FlamePage extends StatefulWidget {
  const FlamePage({Key? key}) : super(key: key);

  @override
  State<FlamePage> createState() => _FlamePageState();
}

class _FlamePageState extends State<FlamePage> {
  String relationShip = "";
  _compute() {
    FlameOperations opr = FlameOperations();
    int count = opr.getCount(tc1.text, tc2.text);
    print("Count is $count");
    relationShip = opr.getTheRelationShip(count);
    setState(() {});
    //opr.removeFlameChars(count);
  }

  TextEditingController tc1 = TextEditingController();
  TextEditingController tc2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          children: [
            CustomTextField('Male', Icons.male, tc1),
            CustomTextField('Female', Icons.female, tc2),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.deepOrange)),
                      onPressed: () {
                        _compute();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          'Compute',
                          style: TextStyle(fontSize: 20),
                        ),
                      ))
                ],
              ),
            ),
            FlameOptions(),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  "Your RelationShip is $relationShip",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[400]),
                ),
              ],
            )
          ],
        )),
      ),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.teal,
          centerTitle: true,
          title: Text('Flame App')),
    );
  }
}
