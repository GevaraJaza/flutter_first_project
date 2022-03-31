import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'customdrawer.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/link.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Contact extends StatefulWidget {
  const Contact({ Key? key }) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(Platform.isAndroid) WebView.platform = AndroidWebView();
  }
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
            margin: EdgeInsets.only(top: 50),
            alignment: Alignment.center,
            child: Text("بەخێربێیت خوێنەری بەرێز",style: TextStyle(fontFamily: "kurdish",fontSize: 30),),
            ),
            Directionality(textDirection: TextDirection.rtl,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Text("زۆر خۆشحاڵین کە تۆی بەرێز خوێنەری بابەتەکانی ئیمەیت و لە هەوڵی فێربووندای،هیوای سەرکەوتنت بۆ دەخوازین، ئەتوانیت لەرێگەی سۆشیال میدیاوە پەیوەندیمان پێوە بکەی بۆ هەر رەخنەو پێشنیارێک.",
                style: TextStyle(fontFamily: "kurdish",fontSize: 20,),),
              ),
            ),
            
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   FaIcon(FontAwesomeIcons.facebook,color: Color.fromARGB(255, 3, 87, 155),size: 35,),
                   SizedBox(width: 10,),
                   Text("Gevara99",style: TextStyle(fontFamily: "english",fontSize: 15,fontWeight: FontWeight.w600,letterSpacing: 1))
                 ],
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   FaIcon(FontAwesomeIcons.telegram,color: Colors.blue,size: 35,),
                   SizedBox(width: 10,),
                   Text("gevarajaza",style: TextStyle(fontFamily: "english",fontSize: 15,fontWeight: FontWeight.w600,letterSpacing: 1))
                 ],
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   FaIcon(FontAwesomeIcons.instagramSquare,color: Colors.brown,size: 35,),
                   SizedBox(width: 10,),
                   Text("gevara.09",style: TextStyle(fontFamily: "english",fontSize: 15,fontWeight: FontWeight.w600,letterSpacing: 1))
                 ],
               ),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.google,color: Colors.red,size: 30,),
                SizedBox(width: 10,),
                Text("yaxe9019@gmail.com",style: TextStyle(color: Color.fromARGB(255, 117, 114, 114),fontFamily: "english",fontSize: 18),),
              ],
            )
        ],
      ),
    );
    
  }
}