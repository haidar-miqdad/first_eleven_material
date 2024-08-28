

import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatefulWidget {
  const ElevatedButtonWidget({super.key});

  @override
  State<ElevatedButtonWidget> createState() => _ElevatedButtonWidgetState();
}

class _ElevatedButtonWidgetState extends State<ElevatedButtonWidget> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: null,
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white
              ),
              child: const Text('Elevated Button disabled'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white
              ),
              child: const Text('Elevated Button enabled increment'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter--;
                });
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white
              ),
              child: const Text('Elevated Button enabled decrement'),
            ),
            Text(counter.toString(), style: const TextStyle(fontSize: 20),)
          ],
        ),
      ),
    );
  }
}











