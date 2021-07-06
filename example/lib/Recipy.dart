import 'dart:html';

import 'package:flutter/material.dart';
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body : Column(
                children: [
                TextField(
            )
            border: OutlineInputBorder(),
        on pressed(){
      icon: Icon(Icon.plus);
    }
    MainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    Container(
    margin: EdgeInsets.only(top: 8),
    child: FlatButton(
    child: Text(FlatButton),
    )
    )
    MainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    Container(
    margin: EdgeInsets.only(top: 8),
    child: TextButton(
    child: Text(FlatButton),
    )
    MainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    Container(
    margin: EdgeInsets.only(top: 8),
    child: FlatButton(
    child: Text(FlatButton),
    )
    ]
    ],
    ),
    );
  }
}
)


class Home0 extends StatelessWidget {
  const Home0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            onTap: (){

            },
    decoration: InputDecoration(
      border: OutlineInputBorder(),
    ),

          ),

    children: <Widget>[
    Container(
    margin: EdgeInsets.only(top: 8),
    child: FlatButton(
    child: Text(FlatButton),
    )
    )

        ],
      )
    );
  }
}

class LogoImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/logo.jpg');
    Image image = Image(image: assetImage);
    return Container(child: image,);
  }
}
class LogoImageAsset1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/fries.jpg');
    Image image = Image(image: assetImage);
    return Container(child: image,);
  }
}