import 'package:flutter/material.dart';

import 'Cards.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
                fit: StackFit.expand,
                children:[
                  Cards(),

                ]


        ),
    );
  }
}
