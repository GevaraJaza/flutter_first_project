import 'package:bookreader/books.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SpSc extends StatefulWidget {
  const SpSc({ Key? key }) : super(key: key);

  @override
  State<SpSc> createState() => _SpScState();
}

class _SpScState extends State<SpSc> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(
      Duration(milliseconds: 5800),() {
        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>books()));
      }
      );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(child: Lottie.asset('assets/book.json'),),
            Text("باشترین هاوڕێم",style: TextStyle(color: Color.fromARGB(255, 55, 151, 142),fontFamily: 'kurdish',fontSize: 50,fontWeight: FontWeight.bold),)
          ],
        ),
        ),
    );
  }
}