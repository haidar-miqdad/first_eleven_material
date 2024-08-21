

import 'package:flutter/material.dart';

class OutlinedButtonWidget extends StatelessWidget {
  const OutlinedButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const OutlinedButton(
              onPressed: null,
              child: Text('OutlinedButton disabled'),
            ),
            const SizedBox(height: 20,),
            OutlinedButton(
              onPressed: () {  },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                foregroundColor: Colors.green,
              ),
              child: const Text('OutlinedButton enabled'),
            ),
          ],
        ),
      ),
    );
  }
}


