

import 'package:flutter/material.dart';

class ListViewSeparatedWidget extends StatelessWidget {
  const ListViewSeparatedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Elevated Button'),
      ),
      body: Center(
        child: SizedBox(
          height: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context,int index){
              return Container(
                height: 200,
                width: 200,
                color: Colors.amberAccent,
              );
            },
            separatorBuilder: (context, index){
              return const SizedBox(
                width: 20,
              );
            },
            itemCount: 10,
          ),
        ),
      ),
    );
  }
}
