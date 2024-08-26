import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Widget'),
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/images/ayam.jpeg',
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20,),
              Image.network(
                'https://i.ytimg.com/vi/j9a9EB0pGTo/maxresdefault.jpg',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ],
          ),
        )
    );
  }
}
