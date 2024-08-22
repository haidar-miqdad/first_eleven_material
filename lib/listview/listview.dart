
import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Elevated Button'),
      ),
      body: Center(
          child: SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 200,
                  color: Colors.blueGrey,
                ),
                const SizedBox(width: 20,),
                Container(
                  height: 200,
                  color: Colors.blueGrey,
                ),
                const SizedBox(width: 20,),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.blueGrey,
                ),
                const SizedBox(width: 20,),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.blueGrey,
                ),
                const SizedBox(width: 20,),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.blueGrey,
                ),
                const SizedBox(width: 20,),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.blueGrey,
                ),
                const SizedBox(width: 20,),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.blueGrey,
                ),
              ],
            ),
          ),
      
      ),
    );
  }
}
