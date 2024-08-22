
import 'package:first_eleven_material/main.dart';
import 'package:first_eleven_material/row.dart';
import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column widget'),
        leading: IconButton(
          onPressed: (){
           Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_ios_new),
        ),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.green,
            ),
            SizedBox(height: 10,),
            Container(
              width: 200,
              height: 200,
              color: Colors.green,
            ),
            SizedBox(height: 10,),
            Container(
              width: 200,
              height: 200,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
