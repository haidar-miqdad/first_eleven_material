import 'package:flutter/material.dart';


class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridview Widget'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.home),
        )),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // mau berapa kolom?
            crossAxisSpacing: 30, // jarak antar kolom
            mainAxisSpacing: 30, // jarak antar baris
            childAspectRatio: 2/2  // lebar / tinggi
        ),
        children: [
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.green,
          ),Container(
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}