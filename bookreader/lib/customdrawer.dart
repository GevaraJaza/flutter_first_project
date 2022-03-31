import 'package:flutter/material.dart';


class CustomDrawer extends StatefulWidget {
  const CustomDrawer({ Key? key }) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
       child: Drawer(
         backgroundColor: Colors.white,
         child: ListView(
           children: [
             Column(
               children: [
                 Container(
                   margin: EdgeInsets.only(bottom: 60),
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Image.asset("assets/images/book.png",width: 200,height: 200,),
                   ),
                 ),
               ],
             ),
             ListTile(
               title: Text("ماڵەوە",style: TextStyle(color: Colors.teal,fontFamily: "kurdish",fontSize: 28),),
               leading: Icon(Icons.home,color: Colors.teal,size: 34,),
               onTap: (){
                 Navigator.pushNamed(context, '/books');
               },
             ),
             ListTile(
               title: Text("پەیوەندی",style: TextStyle(color: Colors.teal,fontFamily: "kurdish",fontSize: 28),),
               leading: Icon(Icons.connect_without_contact,color: Colors.teal,size: 34,),
               onTap: (){
                 Navigator.pushNamed(context, '/contact');
               },
             ),
             ListTile(
               title: Text("گەشەپێدەر",style: TextStyle(color: Colors.teal,fontFamily: "kurdish",fontSize: 28),),
               leading: Icon(Icons.person,color: Colors.teal,size: 34,),
               onTap: (){
                 Navigator.pushNamed(context, '/devloper');
               },
             ),
             ListTile(
               title: Text("دەربارە",style: TextStyle(color: Colors.teal,fontFamily: "kurdish",fontSize: 28),),
               leading: Icon(Icons.feedback,color: Colors.teal,size: 34,),
               onTap: (){
                 Navigator.pushNamed(context, '/about');
               },
             ),
             Column( 
               children: [
                 Container(
                   margin: EdgeInsets.only(top: 110),
                   child: Text("Version 1.0",style: TextStyle(color: Colors.grey),))
               ],
             )
           ],
         ),
       )
       );
  }
}