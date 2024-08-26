
import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
            const SizedBox(height: 20,),
            Container(
              width: 200,
              height: 200,
              color: Colors.green,
            ),
            const SizedBox(height: 20,),
            Container(
              width: 200,
              height: 200,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}