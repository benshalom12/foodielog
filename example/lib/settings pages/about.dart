import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'About Us',
          style: TextStyle(
              fontSize: 40,
              color: Colors.black
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Foodielog',
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
          SizedBox(height: 10.0,),
          Text(
              'Single stop destination for all the food lovers'
          ),
          SizedBox(height: 10.0,),
          Text(
              '''Welcome to Foodielog, your number one source for all the food lovers. We're dedicated to giving you the very best experience, with a focus on cooking, queries, socializing.
                     
Founded in 2020 by two B.tech students, Foodielog has come a long way from its beginnings. When Foodielog first started out, the main aim is the passion for cooking in this lockdown that drove them to develop this application.
                     
We hope you enjoy our platform as much as we enjoy offering a better experience to you. If you have any questions or comments, please don't hesitate to contact us.'''
          ),
          SizedBox(height: 10.0,),
          Text(
              '''Sincerely
Foodielog team.'''
          ),
        ],
      ),
    );
  }
}