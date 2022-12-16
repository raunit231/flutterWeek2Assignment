import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _NewEventScreen();

}

class _NewEventScreen extends State<NewEventScreen>{
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("New Event",style: TextStyle(fontFamily: "Montserrat")),backgroundColor: Color(0xff3F3B6C),),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 400,
              child: TextField(
                minLines: 1,
                maxLines: 50,
                enabled: true,
                style: TextStyle(fontSize: 20,color: Colors.white70,fontFamily: "Montserrat"),
                controller: _textEditingController,
                decoration: InputDecoration(
                 // contentPadding: EdgeInsets.all(20.0),
                  labelStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.white60,
                    fontFamily: "Montserrat"
                  ),
                  filled: true,
                  fillColor: Colors.black,
                  prefixIcon: Icon(Icons.event,color: Colors.white,),
                  hintText: "enter your text here...",
                  hintStyle: TextStyle(color: Colors.white24,fontStyle: FontStyle.italic,fontSize: 15),
                  label: Text("Events"),
                  enabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0)
                  ),

                ),

              ),
            ),

            Builder(
              builder: (context) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                      onPressed: () {
                    String newEventText = _textEditingController.text;
                    Navigator.of(context).pop(newEventText);
                  },
                      child:
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Add",style: TextStyle(fontSize: 25,fontWeight: FontWeight.normal,fontStyle: FontStyle.italic)),
                          Icon(Icons.arrow_forward_ios_rounded),
                        ],
                      ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 80.0,vertical: 20.0),
                      backgroundColor: Color(0xff404258).withOpacity(0.7),
                      shape: StadiumBorder()
                    ),
                  ),
                );


              }
            )
          ],
        ),
      ),

      backgroundColor:  Color(0xff624F82),
    );
  }

}