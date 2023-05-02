import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String label;
  IconData icon;
  TextEditingController tc;

  CustomTextField(this.label, this.icon, this.tc);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: TextFormField(
        controller: tc, // Attach this controller
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            label: Text(label),
            hintText: 'Type For $label Name',
            prefixIcon: Icon(icon),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
      ),
    );
  }
}
