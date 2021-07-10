import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main()=> runApp(Post0());
class Post0 extends StatelessWidget {
  const Post0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test Environment'),
        ),
        body: Post(),
      ),
    );
  }
}







class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Card(
        child: Column(
          children: [
            ListTile(

              leading: CircleAvatar(),
              title: Text('<username>'),
              subtitle: Text('<location>'),
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
                    child: Text("description",)
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
