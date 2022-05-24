import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traviaa/misc/colors.dart';
import 'package:traviaa/widgets/app_large_text.dart';
import 'package:traviaa/widgets/app_text.dart';
import 'package:traviaa/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/img/" + images[index]),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                  margin: EdgeInsets.only(top: 150, left: 20, right: 20),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //welcome page texts 
                          AppLargeText(text: "Trips"),
                          AppText(text: "Mountains",size: 30,),
                          SizedBox(height: 20,),
                          Container(
                        
                            width: 250,
                            child: AppText(text: "Mountains give you incredible sense of freedom along with increasing your endurance",
                            color: AppColors.textColor2,
                            size: 14,),
                          ),
                          SizedBox(height: 40,),
                          ResponsiveButton(width: 120,)

                      
                        ],
                      )
                    ],
                  ),
                  ),
                  
                  
            );
        

          }),
    );
  }
}