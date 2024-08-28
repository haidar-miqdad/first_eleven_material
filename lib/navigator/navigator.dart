import 'package:first_eleven_material/image.dart';
import 'package:flutter/material.dart';

import '../button/elevated_button.dart';
import '../button/outlined_button.dart';
import '../button/text_button.dart';
import '../column.dart';
import '../container.dart';
import '../gridview/gridview.dart';
import '../gridview/gridview_builder.dart';
import '../listview/listview.dart';
import '../listview/listview_separated.dart';
import '../row.dart';


class NavigatorWidget extends StatelessWidget {
  const NavigatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // jumlah kolom
            mainAxisSpacing: 50, // jarak antar baris
            crossAxisSpacing: 20, // jarak antar kolom
            childAspectRatio: 5, // lebar / tinggi
          ),
          children: [
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RowWidget(),
                  ),
                );
              },
              child: const Text('Row Widget'),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ColumnWidget(),
                  ),
                );
              },
              child: const Text('Column Widget'),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContainerWidget(),
                  ),
                );
              },
              child: const Text('Container Widget'),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GridViewWidget(),
                  ),
                );
              },
              child: const Text('GridView Widget'),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GridViewBuilderWidget(),
                  ),
                );
              },
              child: const Text('GridView Builder'),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ListViewWidget(),
                  ),
                );
              },
              child: const Text('listview Widget'),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GridViewBuilderWidget(),
                  ),
                );
              },
              child: const Text('listview builder'),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ListViewSeparatedWidget(),
                  ),
                );
              },
              child: const Text('listview separated'),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ElevatedButtonWidget(),
                  ),
                );
              },
              child: const Text('elevated button'),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OutlinedButtonWidget(),
                  ),
                );
              },
              child: const Text('outlined button'),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TextButtonWidget(),
                  ),
                );
              },
              child: const Text('Text button'),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ImageWidget(),
                  ),
                );
              },
              child: const Text('Image Widget'),
            ),

          ],
        ),
      ),
    );
  }
}
