import 'package:first_eleven_material/image.dart';
import 'package:first_eleven_material/navigator/navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'button/elevated_button.dart';
import 'button/text_button.dart';
import 'column.dart';
import 'container.dart';
import 'gridview/gridview.dart';
import 'gridview/gridview_builder.dart';
import 'listview/listview.dart';
import 'listview/listview_separated.dart';
import 'row.dart';
import 'slicing/first_slicing/slicing_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const ProfileScreen(),
    );
  }
}

