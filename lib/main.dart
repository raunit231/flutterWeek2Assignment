import 'package:flutter/material.dart';
import 'package:hello/new_event.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  final List<Widget> _list = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text("Event Schedular",style: TextStyle(fontFamily: "Montserrat")),
          backgroundColor: Color(0xff3F3B6C),
        ),
        body: Container(
          width: double.infinity,
          child: ListView.builder(
            itemCount: _list.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListTile(
                  contentPadding: EdgeInsets.all(8),
                  title: Center(child: _list[index],),
                  shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                  tileColor: Colors.black54,
                  textColor: Colors.white,
                  


                ),
              );
            },

          ),
        ),
        backgroundColor: Color(0xff624F82),
        floatingActionButton: Builder(
          builder: (context) {
            return SizedBox(
              width: 70,
              child: FloatingActionButton(
                elevation: 50,
                backgroundColor: Color(0xff787A91),

                onPressed: () async {
                  String newText= await Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewEventScreen(),));
                  setState(() {
                    _list.add(Text(newText,textAlign: TextAlign.center,style: TextStyle(fontFamily: "Montserrat"),));
                  });
                },

                child: Icon(Icons.add),
              ),
            );
          }
        ),
      ),
    );
  }
}
