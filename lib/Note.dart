import 'package:flutter/material.dart';
class NoteApp extends StatefulWidget {
  

  @override
  State<NoteApp> createState() => _NoteAppState();
}

class _NoteAppState extends State<NoteApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NOTEAPP'),backgroundColor: Colors.blue,
      ),
body: 
GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
 itemBuilder: (context,index){
  return Container(
    height: 300,
    width: double.infinity,
    child: Column(
      children: [
        Text("fghgh"),
        Text('ghbv'),
        Text('gfgsg'),
        Text('fgfhgh')
      ],
    ),
  );
 }),

floatingActionButton: FloatingActionButton(onPressed: (){
      showModalBottomSheet(context: context, builder: (BuildContext context){
        return Container(
height: 400,
width: double.infinity,
child: Padding(
  padding: const EdgeInsets.all(15.0),
  child: Column(
    children: [
      SizedBox(
        height: 50,
        width: 300,
        child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),label:Text('Title')),)),
      SizedBox(height: 10),
       SizedBox(
        height:50,
        width: 300,
        child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),label:Text('Categort')),)),
      SizedBox(height: 10),
       SizedBox(
        height: 50,
        width: 300,
        child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),label:Text('Description')),)),
      SizedBox(height: 10),
       SizedBox(
        height: 50,
        width: 300,
        child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),label:Text('Date')),)),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(onPressed: (){

            }, child: Text('Add')),
            SizedBox(width: 5),
              TextButton(onPressed: (){}, child: Text('Cancle')),
          ],
        )
      
    ],
  ),
),

        );
      });
    },
    child: Icon(Icons.add),),
    );
  }
}