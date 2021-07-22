import 'package:flutter/material.dart';

class Posts{
  ProfilePic profilepic;
  Username username;
  Location location;
  Image postimage;
  String dishname;
  String description;
  int cheers;
  bool favourites;
  Wonder wonder_container;
  Posts({required this.cheers, required this.description, required this.dishname, required this.favourites,
  this.location, required this.postimage, this.profilepic,this.username,this.wonder_container}){

  }
}

Scaffold FeedBuilder(List<Posts> posts){
Feed_Scaffold(posts: );
}

class Feed_Scaffold extends StatelessWidget {
  List<Posts> = Po
  const Feed_Scaffold({Key? key, required List<Posts> posts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pagecontroller,
        children: posts
      ),
    );
  }
}
