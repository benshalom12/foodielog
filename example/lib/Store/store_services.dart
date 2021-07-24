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
   Feed_Scaffold({Key? key, required this.posts}) : super(key: key);
   final List<Posts> posts;
final pagecontroller = PageController(
  initialPage: 1,
);

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

class Presenter extends StatefulWidget {
  const Presenter({Key? key, required this.posts}) : super(key: key);
  final Posts posts;

  @override
  _PresenterState createState() => _PresenterState();
}

class _PresenterState extends State<Presenter> {
  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      child: Container(
        child: Column(
          children: [
            ListTile(

              leading: CircleAvatar(),
              title: Text('<username>'),
              subtitle: Text(_usersStream.toString()),
            ),
            Column(
              children: [
                Container(

                  child: Image.network( 'https://www.cubesnjuliennes.com/wp-content/uploads/2021/03/Best-Mutton-Biryani-Recipe.jpg'),
                  //fit: BoxFit.fill,



                )
              ],
            ),
            ListTile(
              leading: IconButton(onPressed: (){

              },
                icon: Icon(Icons.volunteer_activism),),
              trailing: IconButton(onPressed: (){

              },
                icon: Icon(Icons.star_border),),

            ),
            /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextButton(
                  child: const Text('Null'),
                  onPressed: () {/* ... */},
                ),
                SizedBox(width: 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      child: Text('LISTEN'),
                      onPressed: () {/* ... */},
                    ),
                    SizedBox(height: 14,),
                  ],
                )
              ],
            ),*/
            Container(
                padding: EdgeInsets.fromLTRB(13.0, 0.0,20.0, 20.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("<recipy_name>",
                        style:TextStyle(fontSize: 17,fontWeight: FontWeight.bold) ,),

                      //alignment: AlignmentGeometry.lerp(a, b, t),

                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                          'fine.toString()'


                      ),
                      // style:TextStyle(fontSize: 17,fontWeight: FontWeight.bold) ,),

                      //alignment: AlignmentGeometry.lerp(a, b, t),

                    ),


                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}

