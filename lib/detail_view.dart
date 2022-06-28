import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page", style: TextStyle(
          letterSpacing: 2,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
      ),
      body: Container(
      alignment: Alignment.center,
      child: const Text("Product Detail Page",style: TextStyle(
        fontSize: 25,
        letterSpacing:2,
        fontWeight: FontWeight.bold,
      ),),),
    );

  }
}
