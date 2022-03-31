import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:http/http.dart' as http;
import 'CUSTOMDRAWER.dart';

class books extends StatefulWidget {
  const books({ Key? key }) : super(key: key);

  @override
  State<books> createState() => _booksState();
}
const api = "http://192.168.1.5/book/";
class _booksState extends State<books> {
  Future getdata() async {
    var url = Uri.parse("$api");
    var response = await http.get(url);
    var responsebody = jsonDecode(response.body);
    return responsebody;
  }
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("باشترین هاوڕێم",style: TextStyle(fontFamily: "kurdish",fontSize: 25),),
        centerTitle: true,
      ),
      endDrawer: CustomDrawer(),
      body:  SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: FutureBuilder(
            future: getdata(),
            builder: (context, AsyncSnapshot snapshot) {
            if(snapshot.connectionState == ConnectionState.done){
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2),
                  itemCount: snapshot.data.length,
                itemBuilder: (context,i){
                  if(snapshot.hasData){
                    return InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, '/bkpdf',arguments: {'book_id' : snapshot.data[i]["id"]});
                      },
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.teal,),
                        height: 400,
                        width: 400, 
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(snapshot.data[i]['name'],
                            style: TextStyle(
                              fontFamily: "kurdish",
                              color: Colors.white,
                              fontSize: 20,
                              ),),
                            Image.network("$api/profile/images/" + snapshot.data[i]['image'],width: 100,)
                          ],
                        ),
                      ),
                    ); //henanawae data
                  }else{
                    return Center(child: CircularProgressIndicator(color: Colors.teal),);  //agar xate nabu yan xate xaw bu hata load abet
                  }
                });
            }else{
              return Center(child: CircularProgressIndicator(color: Colors.teal),);    //agar xate nabu yan xate xaw bu 
            }
          },),
        ),
      )
    );
  }
}