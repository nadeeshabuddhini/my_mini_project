import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class AddSt_Attendance extends StatefulWidget{
  @override
  _AddCourseState createState()=>new _AddCourseState();
}
class _AddCourseState extends State<AddSt_Attendance>{

  String _counter,_value=" ";
  Future _incrementCounter()async{
    _counter=await FlutterBarcodeScanner.scanBarcode("#004297", "cancel", true);
    setState(() {
      _value=_counter;
    });
  }

  DateTime _dueDate = new DateTime.now();
  String _dateText = '';
  String _selectedUser = null;
  var _formKey = GlobalKey<FormState>();

  String subCode = '';
  String subject = '';

  Future<Null> _selectDueDate(BuildContext context) async {
    final picked = await showDatePicker(
        context: context,
        initialDate: _dueDate,
        firstDate: DateTime(2020),
        lastDate: DateTime(2050)
    );
    if (picked != null) {
      setState(() {
        _dueDate = picked;
        _dateText = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

    @override
    void initState() {
      super.initState();
      _dateText = "${_dueDate.day}/${_dueDate.month}/${_dueDate.year}";
    }

    @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
        backgroundColor: Colors.white70,
        body: Form(
          key: _formKey,
          child: new SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: 200.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/bg3.jpg"),
                        fit: BoxFit.cover),
                  ),


                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Student Attendance", style: new TextStyle(
                        color: Colors.white,
                        fontSize: 34.0,
                        fontWeight: FontWeight.bold,

                      ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20.0,),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(25),


                        child: DropdownButton(

                          value: _selectedUser,
                          items: _dropDownItem(),
                          onChanged: (value) {
                            _selectedUser = value;

                            setState(() {

                            });
                          },

                          hint: Text('Select the Subject',),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      new Icon(Icons.date_range),
                      new Expanded(child: Text("Due Date", style: new TextStyle(
                          fontSize: 22.0, color: Colors.black54),)),
                      new FlatButton(
                          onPressed: () => _selectDueDate(context),
                          child: Text(_dateText, style: new TextStyle(
                              fontSize: 22.0, color: Colors.black54),)),
                    ],
                  ),
                ),

                SizedBox(height: 20.0,),
                Column(
                  children: <Widget>[
                    Text(
                      "Scan the Barcode",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,

                      ),
                    ),
                    Text(
                      _value,
                      style: Theme.of(context).textTheme.display1,
                    ),
                  ],
                ),



                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      DropdownButton(


                        value: _selectedUser,
                        items: _dropDownItem(),
                        onChanged: (value) {
                          _selectedUser = value;

                          setState(() {

                          });
                        },

                        hint: Text('Select user type',),
                      ),
                      DropdownButton(


                        value: _selectedUser,
                        items: _dropDownItem(),
                        onChanged: (value) {
                          _selectedUser = value;

                          setState(() {

                          });
                        },

                        hint: Text('Select user type',),

                      ),
                    ],
                  ),
                ),


              ],

            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip:'Increment',
            child: Icon(Icons.settings_overscan),
        ),
      );
    } //build widget
  }



List<DropdownMenuItem<String>> _dropDownItem() {
  List<String>ddl = ["SAD", "OOP", "SAM"];
  return ddl.map(
          (value) =>
          DropdownMenuItem(
            value: value,
            child: Text(value),
          )
  ).toList();
}




