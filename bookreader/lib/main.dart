import 'package:bookreader/about.dart';
import 'package:bookreader/bkpdf.dart';
import 'package:bookreader/contact.dart';
import 'package:bookreader/devloper.dart';
import 'package:flutter/material.dart';
import 'books.dart';
import 'splashscreen.dart';
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: 
    {
      '/' :(context) => SpSc(),
      '/books' :(context) => books(),
      '/bkpdf' :(context) => Bkpdf(),
      '/contact' :(context) => Contact(),
      '/devloper' :(context) => Devloper(),
      '/about' :(context) => About(),
    },
  ));
}

