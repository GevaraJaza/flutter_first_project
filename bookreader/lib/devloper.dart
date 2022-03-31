import 'package:flutter/material.dart';
import 'customdrawer.dart';
class Devloper extends StatefulWidget {
  const Devloper({ Key? key }) : super(key: key);

  @override
  State<Devloper> createState() => _DevloperState();
}

class _DevloperState extends State<Devloper> {
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
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 30),
            child: ClipRRect(
              child: Image.asset("assets/images/i.jpg",
              width: 150,
              ),
              borderRadius: BorderRadius.circular(1000),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8,bottom: 20),
            alignment: Alignment.center,
            child: Text("جیڤارا جەزا",style: TextStyle(fontFamily: "kurdish",fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          Directionality(textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text("من ناوم جیڤارا جەزایە،قوتابیم لە بەشی کۆمپیوتەر لە پەیمانگای پێشەنگی ناحکومی تەمەنم ٢٢ ساڵە بۆ پرۆگرامینگ ئەخوێنم بەهیوای ئەوەی اینشاڵا فێری باشترین زانست ببم و بگەمە چەندین بروانامە لە داهاتوودا،شارەزایم هەیە لە پایسۆن،دارت،فلەتەر،جاڤاسکریپت،ئێچ تی ئێم ئێل،سی ئێس ئێس،بووت ستراب،پی ئێچ پی،هەروەها بەرنامەکانی دیزاین و مۆنتاژ.",
                style: TextStyle(fontFamily: "kurdish",fontSize: 18,wordSpacing: 2,),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}