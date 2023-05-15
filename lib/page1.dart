import 'package:flutter/material.dart';
import 'package:my_app/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List<dynamic> myList = [
    {
      'id': 1,
      'image':
          'https://cdn.pixabay.com/photo/2020/06/15/19/49/fuchs-5303221_960_720.jpg',
    },
    {
      'id': 2,
      'image': 'https://static.tuoitre.vn/tto/i/s626/2014/09/30/fQdwyJvC.jpg',
    },
    {
      'id': 3,
      'image': 'https://btnmt.1cdn.vn/2022/05/14/3500-2-.jpg',
    },
    {
      'id': 4,
      'image':
          'https://static2-images.vnncdn.net/files/publish/2022/9/23/dong-vat-2-79.jpg',
    },
    {
      'id': 5,
      'image':
          'https://genk.mediacdn.vn/thumb_w/640/2014/1-1-1248439897-chuot-choi-nhac-13-1390190701506-1390201575215.jpg',
    },
    // Thêm các mục lá cờ khác theo nhu cầu
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero animation"),
      ),
      body: ListView.builder(
        itemCount: myList.length,
        itemBuilder: (BuildContext context, int index) {
          myList[index];
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      Page2(tag: "item ${myList[index]["id"]}"),
                ),
              );
            },
            child: Container(
              height: 200,
              child: Row(
                children: [
                  Hero(
                    tag: "item ${myList[index]["id"]}",
                    child: Image.network(
                      myList[index]["image"],
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text("Image ${myList[index]["id"]}"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
