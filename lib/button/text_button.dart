
import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Elevated Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                  splashFactory: NoSplash.splashFactory
              ),
              onPressed: null,
              child: const Text('TextButton disabled'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  splashFactory: NoSplash.splashFactory
              ),
              onPressed: () {  },
              child: const Text('TextButton enabled'),
            ),
          ],
        ),
      ),
    );
  }
}


