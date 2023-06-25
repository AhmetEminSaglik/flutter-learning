import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
              height: 100,
              width: 100,
              child: JpgImage(name: ImageItems().appleWithBookWithoutPath)),
          SizedBox(
              height: 100,
              width: 100,
              child: PngImage(name: ImageItems().appleWithoutPath)),
          SizedBox(
            height: 100,
            width: 100,
            child: Image.network('https://thumbs.dreamstime.com/z/green-apple-leaf-slice-isolated-white-ripe-background-clipping-path-45471482.jpg',
            errorBuilder: (context,error,stackTrace)=> const Icon(Icons.abc_outlined)),
          ),
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleWithBook = "assets/apple-school-book.jpg";
  final String apple = "assets/png/apple.png";
  final String appleWithoutPath = "apple";
  final String appleWithBookWithoutPath = "apple-school-book";
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/png/$name.png', fit: BoxFit.cover);
  }
}

class JpgImage extends StatelessWidget {
  const JpgImage({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/$name.jpg', fit: BoxFit.cover);
  }
}
