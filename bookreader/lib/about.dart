import 'package:flutter/material.dart';
import 'customdrawer.dart';
import 'package:lottie/lottie.dart';

class About extends StatefulWidget {
  const About({ Key? key }) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("باشترین هاوڕێم",style: TextStyle(fontFamily: "kurdish",fontSize: 25),),
        centerTitle: true,
        leading: BackButton(),
      ),
      endDrawer: CustomDrawer(),
      body: ListView(
        children: [
          Container(alignment: Alignment.center,
            child: Lottie.asset("assets/cb.json"),
            height: 250,
            ),
            Directionality(textDirection: TextDirection.rtl,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Text("ئەم ئەپلیکەیشنە دروست کراوە بۆ خزمەتی ئەو زانست خوازانەی کە لە هەوڵی فێربووندان وە پێک دێت لە کۆمەڵە کتێبێکی بە سوود لە رێگەیانەوە ئەتوانی ئیسفادەیەکی زۆری لێبکەی ئەو کتێبانە لە بوارەکانی کۆمپیوتەر و زمانەکانی کۆمپیوتەر و قورئانی پیرۆز  و چەندین کتێبی بەسوود پێکدێت لە گەڵ هەروەشانێکی نوێ کۆمەڵە کتێبێکی تر زیاد ئەکرێت، هیوادارم خزمەتێکم بە ئێوەی ئازیز کردبێت.",
                style: TextStyle(
                  fontFamily: "kurdish",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 2
                ),
                ),
              ),
            )
        ],
      ),
    );
  }
}