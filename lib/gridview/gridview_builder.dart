

import 'package:flutter/material.dart';

class GridViewBuilderWidget extends StatelessWidget {
  const GridViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // buat 3 kolom
            mainAxisSpacing: 50, // jarak antar baris
            crossAxisSpacing: 10, // jarak antar kolom
            childAspectRatio: 1 // lebar / tinggi
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.blueGrey,
          );
        },
      ),
    );
  }
}

