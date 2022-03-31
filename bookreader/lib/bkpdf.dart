import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'CUSTOMDRAWER.dart';

class Bkpdf extends StatefulWidget {
  const Bkpdf({ Key? key }) : super(key: key);

  @override
  State<Bkpdf> createState() => _BkpdfState();
}
const api = "http://192.168.1.5/book/";
class _BkpdfState extends State<Bkpdf> {
  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)!.settings.arguments as Map;
    
    Future getdata(book_id) async {
      var url =Uri.parse("$api/post.php?book_id=$book_id");
      var response = await http.get(url);
      return jsonDecode(response.body);
    }

    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("باشترین هاوڕێم",style: TextStyle(fontFamily: "kurdish",fontSize: 25),),
        centerTitle: true,
        leading: BackButton(),
      ),
      endDrawer: CustomDrawer(),
      body: Container(
        child: FutureBuilder(
          future: getdata(argument["book_id"]),
          builder: (context, AsyncSnapshot snapshot) {
          if(snapshot.connectionState == ConnectionState.done){
            return PageView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
              return SfPdfViewer.network("$api/bookpdf/" + snapshot.data[index]['bkname'],);
            },);
          }else{
            return Center(child:CircularProgressIndicator());
          }
        },),
      ),
    );
  }
}