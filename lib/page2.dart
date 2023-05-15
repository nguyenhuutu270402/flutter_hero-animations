import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key, required this.tag, required this.item});

  final String tag;
  final item;
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
          child: Image.network(widget.item["image"]),
        ),
      ),
    );
  }
}
