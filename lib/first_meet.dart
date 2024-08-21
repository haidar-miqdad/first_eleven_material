import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green,
                border: Border.all(width: 20, color: Colors.blueGrey),
              ),
              child: const Center(
                child: Text(
                  'hello eleven grade',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green,
                border: Border.all(width: 20, color: Colors.blueGrey),
              ),
              child: const Center(
                child: Text(
                  'hello eleven grade',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green,
                border: Border.all(width: 20, color: Colors.blueGrey),
              ),
              child: const Center(
                child: Text(
                  'hello eleven grade',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 100,
                  color: Colors.brown,
                  child: Column(
                    children: [
                      Text('hello', style: TextStyle(color: Colors.white),),
                      Text('hello', style: TextStyle(color: Colors.white)),
                      Text('hello', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.brown,
                ),
                SizedBox(width: 20,),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.brown,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
