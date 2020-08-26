import 'package:flutter/material.dart';
import 'package:sqlite/Screen/NoteDetails.dart';

class NoteList extends StatefulWidget {
  @override
  _NoteListState createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  int cunt = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Add Your Note"),
      ),

      body: getnote_listiew(),

      floatingActionButton: new FloatingActionButton(

        onPressed: (){
          setState(() {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => NoteDetails()));
          });
        },

        backgroundColor: Colors.teal,
        child: Icon(Icons.add),
        tooltip: "Add Note",
      ),
    );
  }

 ListView getnote_listiew() {
    return ListView.builder(
      itemCount: cunt,
      itemBuilder: (BuildContext context, int position){
        return Card(
          color: Colors.white,
          elevation: 2.0,

          child: ListTile(
            leading: new CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Icon(Icons.favorite),
            ),

            title: new Text("Title"),
            subtitle: new Text("Its is subtitle"),
            trailing: new Icon(Icons.delete),
          ),
        );
      },
    );
 }


}
