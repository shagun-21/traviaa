import 'package:flutter/material.dart';
import 'package:traviaa/widgets/app_large_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //main column starts from here
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          padding: const EdgeInsets.only(top: 70,left: 20),
          //row first with menu icon and profile photo
          child: Row(children: [
            Icon(Icons.menu,size: 30,color: Colors.black54,),
            Expanded(child: Container(),),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey.withOpacity(0.5)
              ),
            )
        
          ]),
        ),
        SizedBox(height: 40,),
        Container(
          margin: EdgeInsets.only(left: 20),
          child: AppLargeText(text: "DISCOVER"),
        )
      ]),
    );
  }
}