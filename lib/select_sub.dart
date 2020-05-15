import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class select_sub {
  runApp(new MaterialApp(home: new select_sub()));
}

class select_sub extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("Confirmation AlertDialog"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
              onPressed: () async {
                final ConfirmAction action = await _asyncConfirmDialog(context);
                print("Confirm Action $action" );
              },
              child: const Text(
                "Show Alert",
                style: TextStyle(fontSize: 20.0),),
              padding: EdgeInsets.fromLTRB(30.0,10.0,30.0,10.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)
              ),
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
enum ConfirmAction { Cancel, Accept}
Future<ConfirmAction> _asyncConfirmDialog(BuildContext context) async => showDialog<ConfirmAction>(
    context: context,
    barrierDismissible: false, // user must tap button for close dialog!
    builder: (BuildContext context) => AlertDialog(
        title: Text('Delete This Contact?'),
        content: StreamBuilder(
          stream:Firestore.instance.collection("course details").snapshots(),
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot>snapshot) {
            if(!snapshot.hasData)
              return new Container(child: Center(child: CircularProgressIndicator(),
              ),);
            return new Tasklist(document: snapshot.data.documents,);

          },
        ),



        actions: <Widget>[
          FlatButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop(ConfirmAction.Cancel);
            },
          ),
          FlatButton(
            child: const Text('Delete'),
            onPressed: () {
              Navigator.of(context).pop(ConfirmAction.Accept);
            },
          )
        ],
      ),
  );
class Tasklist extends StatefulWidget {
  Tasklist({this.document});
  final List<DocumentSnapshot>document;
  @override
  TasklistState createState() => new TasklistState();
}

  class TasklistState extends State<Tasklist>{
    bool _isChecked=false;
    void onChanged(bool value){
      setState((){
        _isChecked=value;
      });
    }

    @override
  Widget build(BuildContext context){
    return new ListView.builder(
        itemCount:document.length,
        itemBuilder:(BuildContext context,int i) {
          String subCode = document[i].data['subCode'].toString();

                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: <Widget>[
                            Text(subCode, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                            new Checkbox(value:_isChecked, onChanged:(bool value){onChanged(value);}),
                          ],
                        ),
                      );







        }


    );
  }
}