import 'package:flutter/material.dart';
import 'package:student_attendance/Home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Login extends StatefulWidget{
  @override
  _LoginState createState()=>new _LoginState();
}

class _LoginState extends State<Login> {

  String _selectedUser = null;
  String _email, _password;
  final GlobalKey<FormState>_formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text('Sign in'
        ),

      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.only(left: 20.0, top: 30.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'welcome to',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),

                ),
                SizedBox(height: 20.0,),
                Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      height: 80.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 5.0
                          ),
                          image: DecorationImage(
                            image: AssetImage('images/logo.png'),
                          )
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0,),
                Column(
                  children: <Widget>[
                    Text(
                      "STUDENT ATTENDANCE SYSTEM",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,

                      ),
                    )
                  ],
                ),


                SizedBox(height: 20.0,),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 15.0),
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

                          hint: Text('Select user type',),
                        ),
                      ),
                    )
                  ],
                ),

                SizedBox(height: 20.0),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 15.0),

                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(25),
                        child: TextFormField(
                          validator: (input) {
                            if (input.isEmpty) {
                              return 'Please type an email';
                            }
                          },
                          onSaved: (input) => _email = input,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.email,
                                 color: Colors.grey,
                                size: 30.0,
                              ),
                              contentPadding: EdgeInsets.only(
                                  left: 15, top: 15, bottom: 10),
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                  color: Colors.grey
                              ),
                            errorStyle:TextStyle(
                              fontSize: 14.0,
                            )
                          ),

                        ),

                      ),
                    ),
                  ],
                ),


                SizedBox(height: 20.0),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 15.0),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(25),
                        child: TextFormField(
                          validator: (input) {
                            if (input.isEmpty) {
                              return 'Please type the password';
                            } else if (input.length < 6) {
                              return 'Your password needs at least 6 characters';
                            }

                          },
                          onSaved: (input) => _password = input,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.vpn_key,
                                color: Colors.grey,
                                size: 30.0,
                              ),
                              contentPadding: EdgeInsets.only(
                                  left: 15, top: 15, bottom: 10),
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                  color: Colors.grey
                              ),
                              errorStyle: TextStyle(
                                fontSize: 14.0,
                              ),
                          ),
                          obscureText: true,
                        ),
                      ),
                    )
                  ],
                ),
                //form


                SizedBox(height: 20.0,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16.0,

                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0,),
                RaisedButton(
                  onPressed: signIn,
                  color: Colors.blue,
                  child: Text('LOGIN'),

                ),

              ],
            ),

          ),

        ),
      ),
    );
  }

  Future<void> signIn() async {
    final formState = _formKey.currentState;
    if (formState.validate()) {
      formState.save();
      try{
        await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
        Navigator.push(context,MaterialPageRoute(builder:(context)=>Home()));


      }catch(e){
        print(e.message);

      //try {
        //await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password).then((onValue){
          //print('done');
         // print(_selectedUser);
         // if("Admin"==_selectedUser){
            //Navigator.push(
               // context, MaterialPageRoute(builder: (context) => Home()));
         // }
       // }).catchError((onError){
        //  print(onError+" "+"error");
       // }
       // );
     // } catch (e) {
       // print(e.message);
      }
    }
  }

}
  List<DropdownMenuItem<String>> _dropDownItem() {
    List<String>ddl = ["Admin", "Lecturer", "Student"];
    return ddl.map(
            (value) =>
            DropdownMenuItem(
              value: value,
              child: Text(value),
            )
    ).toList();
  }
