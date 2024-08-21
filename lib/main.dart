import 'package:first_eleven_material/row.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'button/elevated_button.dart';
import 'button/outlined_button.dart';
import 'first_meet.dart';
import 'container.dart';
import 'column.dart';
import 'gridview/gridview.dart';
import 'gridview/gridview_builder.dart';
import 'listview/listview.dart';
import 'listview/listview_builder.dart';
import 'listview/listview_separated.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const OutlinedButtonWidget(),
    );
  }
}




