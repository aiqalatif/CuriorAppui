import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class TextFieldWithImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Field with Image'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Container(
              width: 370.0, // Adjust the width according to your needs
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter text...',
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: Image.asset(
                'assets/clock.png', // Replace with your image path
                width: 24.0,
                height: 24.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
