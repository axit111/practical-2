import 'package:flutter/material.dart';
import 'package:practical2/detail_view.dart';
import 'package:practical2/views/home_view.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>const HomePage(), 'detail_page': (context) => const DetailPage(),
    },
    )
  );
}
