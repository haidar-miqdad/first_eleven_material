import 'package:first_eleven_material/row.dart';
import 'package:flutter/material.dart';
import 'first_meet.dart';
import 'container.dart';
import 'column.dart';
import 'listview/listview.dart';
import 'listview/listview_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const GridViewWidget(),
    );
  }
}

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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


