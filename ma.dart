import 'package:flutter/material.dart';

void main()=>runApp(home());

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  Null _selectedQuestion=null;

  get child => null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Help",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Help'),
        ),
        body: Center(child: Column(children: <Widget>[
        Container(
        margin: EdgeInsets.all(25),
            child: OutlinedButton.icon(
              onPressed: () {
                // Respond to button press
              },
              icon: Icon(Icons.report, size: 18),
              label: Text("Report A Problem"),
            )
        ),

          Container(
              margin: EdgeInsets.all(25),
              child: OutlinedButton.icon(
                onPressed: () {
                  // Respond to button press
                },
                icon: Icon(Icons.help_center, size: 18),
                label: Text("Help Center"),
              )
          ),

          Container(
              margin: EdgeInsets.all(25),
              child: OutlinedButton.icon(
                onPressed: () {
                  // Respond to button press
                },
                icon: Icon(Icons.privacy_tip, size: 18),
                label: Text("Privacy And Security Help"),
              )
          ),


          DropdownButton(
            value: _selectedQuestion,
            items: _dropDownItem(),
            onChanged: (value){
              _selectedQuestion=value as Null;
              setState(() {
              });
            },
            hint: Text('FAQs'),
          ),


],
    ),
      ),
    )
    );
  }
}

List<DropdownMenuItem<String>> _dropDownItem(){
  List<String> ddl=["Question1","Question2","Question3"];
  return ddl.map(
          (value)=>DropdownMenuItem(
        value: value,
        child: Text(value),
      )
  ).toList();
}
