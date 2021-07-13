import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final formKey = new GlobalKey< FormState>();
  string email,password;
  Color pink =Colors.pinkAccent;

  // to check feilds during submit
  CheckFeilds(){
    final form = formKey.currentState;
    if (form.validate()){
      form.save();
      return true;
    }
    return false;
  }

  //to validate email
  String validateEmail(Stirng value){
    Pattern pattern= r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: new Stack(
            fit:StackFit.expand,
            children:<Widget>[
              new Image(
                image: new AssetImage("lib/assets/food.jpg"),
                fit: BoxFit.cover,
                color: Colors.black87,
                colorBlendMode: BlendMode.darken,
              ),

              new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: Form(key: formKey, child: _buildLoginForm())));}
  _buildLoginForm(){
                   child: Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                          child: Text(
                            'Signup',
                            style:
                            TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold,color:Colors.pinkAccent),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(260.0, 125.0, 0.0, 0.0),
                          child: Text(
                            '.',
                            style: TextStyle(
                                fontSize: 80.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.pink),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(
                                labelText: 'EMAIL',
                                labelStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.pink))),
                            onChanged:(value){
                              this.email=value;
                              },
                            validator:(value)=>
                               value.isEmpty?'Email is required':validateEmail(value)),
                          ),
                          SizedBox(height: 10.0),
                          TextField(
                            decoration: InputDecoration(
                                labelText: 'PASSWORD ',
                                labelStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.pink))),
                            obscureText: true,
                            onchanged: (value){
                              this.password=value;
                              },
                            validator:(value)=>
                                 value.isEmpty?'password is required':null),
                          ),
                          SizedBox(height: 10.0),
                          TextField(
                            decoration: InputDecoration(
                                labelText: 'USERNAME',
                                labelStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.pink))),
                            onchanged: (value){
                                  this.password=value;
                            },
                            validator:(value)=>
                                value.isEmpty?'username is required':null),
                          ),
                          SizedBox(height: 50.0),
                          GestureDetector(
                             onTap: () {
                                  if (checkFields())
                                     AuthService().signUp(email, password).then((userCreds) {
                                          Navigator.of(context).pop();
                                     }).catchError((e) {
                                           ErrorHandler().errorDialog(context, e);
                                     });
                          },
                          Container(
                              height: 40.0,
                              child: Material(
                                borderRadius: BorderRadius.circular(20.0),
                                shadowColor: Colors.pinkAccent,
                                color: Colors.pink,
                                elevation: 7.0,
                                  child: Center(
                                    child: Text(
                                      'SIGNUP',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Montserrat'),
                                    ),
                                  ),
                                ),
                              )),
                          SizedBox(height: 20.0),
                          Container(
                            height: 40.0,
                            color: Colors.transparent,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      style: BorderStyle.solid,
                                      width: 1.0),
                                  color: Colors.pinkAccent,
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child:

                                Center(
                                  child: Text('Go Back',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Montserrat')),
                                ),


                              ),
                            ),
                          ),
                        ],
                      )),
                ],
              )
            ]
        ));



  }
}

