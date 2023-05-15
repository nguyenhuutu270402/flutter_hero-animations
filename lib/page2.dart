import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key, required this.tag});

  final String tag;
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: Hero(
        tag: widget.tag,
        child: Container(
          child: Image.network(
              "https://png.pngtree.com/png-clipart/20201216/ourlarge/pngtree-blue-cute-cartoon-animal-baby-shark-clipart-png-image_2554393.jpg"),
        ),
      ),
    );
  }
}
