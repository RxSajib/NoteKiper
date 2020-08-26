import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoteDetails extends StatefulWidget {
  @override
  _NoteDetailsState createState() => _NoteDetailsState();
}

class _NoteDetailsState extends State<NoteDetails> {

  static var priorits = ['High', 'Low'];
  TextEditingController titlecontroler = new TextEditingController();
  TextEditingController descptrioncontroler = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Note Details"),
      ),

      body: Padding(
        padding: EdgeInsets.all(10.0),

        child: new ListView(
          children: <Widget>[
            ListTile(
              title: DropdownButton(
                items: priorits.map((String dropDownStringIteams){
                  return DropdownMenuItem<String>(
                    value: dropDownStringIteams,
                    child: Text(dropDownStringIteams),
                  );
                }).toList(),
                value: "Low",
                onChanged: (valueselectbyuser){
                  setState(() {
                    debugPrint("user select $valueselectbyuser");
                  });
                },
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: TextField(
                controller: titlecontroler,
                onChanged: (value){
                  debugPrint("Somethings change in the title bar");
                },
                 decoration: InputDecoration(
                   labelText: "Title",
                   hintText: "Enter title",
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(5.0)
                   )
                 ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: TextField(
                controller: descptrioncontroler,
                onChanged: (value){
                  debugPrint("Somethings changes in the details");
                },

                decoration: new InputDecoration(
                  hintText: "Enter details",
                  labelText: "Details",
                  border: new OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  )
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Expanded(
                    child: RaisedButton(
                      child: Text("Save", style: TextStyle(color: Colors.white),),
                      color: Colors.teal,

                      onPressed: (){
                        setState(() {
                          debugPrint("click save button");
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                  ),

                  Expanded(
                    child: RaisedButton(
                      color: Colors.redAccent,
                      child: Text("Delete", style: TextStyle(color: Colors.white),),
                      onPressed: (){
                        setState(() {
                          debugPrint("click delete button");
                        });
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
