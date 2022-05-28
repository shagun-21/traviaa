import 'package:flutter/material.dart';
import 'package:traviaa/misc/colors.dart';
import 'package:traviaa/widgets/app_buttons.dart';
import 'package:traviaa/widgets/app_large_text.dart';
import 'package:traviaa/widgets/app_text.dart';
import 'package:traviaa/widgets/responsive_button.dart';

class DetailedPage extends StatefulWidget {
  const DetailedPage({Key? key}) : super(key: key);

  @override
  State<DetailedPage> createState() => _DetailedPageState();
}

class _DetailedPageState extends State<DetailedPage> {
  int gottenStars = 4;
  int selectedIndex=-1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("lib/img/mountain.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            right: 50,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.menu),
                  color: Colors.white,
                )
              ],
            ),
          ),
          Positioned(
            top: 300,
            child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                          text: "Yosemite",
                          color: Colors.black.withOpacity(0.8),
                        ),
                        AppLargeText(
                          text: "\$ 250",
                          color: AppColors.mainColor,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: AppColors.mainColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        AppText(
                          text: "USA, California",
                          color: AppColors.textColor1,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) {
                            return Icon(
                              Icons.star,
                              color: index < gottenStars
                                  ? AppColors.starColor
                                  : AppColors.buttonBackground,
                            );
                          }),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        AppText(
                          text: "(4.0)",
                          color: AppColors.textColor2,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AppText(
                      text: "People",
                      color: Colors.black.withOpacity(0.8),
                      size: 20,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    AppText(
                      text: "Number of people in your group",
                      color: AppColors.mainTextColor,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      children: List.generate(5, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex=index;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: AppButtons(
                              size: 50,
                              color: selectedIndex==index?Colors.white:Colors.black,
                              backgroundColor: selectedIndex==index?Colors.black:AppColors.buttonBackground,
                              borderColor: selectedIndex==index?Colors.black:AppColors.buttonBackground,
                              text: (index + 1).toString(),
                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(height: 20,),
                    AppLargeText(text: "Description",color: Colors.black.withOpacity(0.8),size: 20,),
                    SizedBox(height: 10,),
                    AppText(text: "You must go for a travel. Travelling gives a refresh to your life. So go out for a travel and get yourself close to the nature",
                    color: AppColors.mainTextColor,)
                  ],
                )),
          ),
       Positioned(
         bottom: 20,
         left: 20,
         right: 20,
         child:Row(
           children: [
             AppButtons(size: 60, color: AppColors.textColor1, backgroundColor: Colors.white, borderColor: AppColors.textColor1
             ,isIcon: true,
             icon: Icons.favorite_border,),
             SizedBox(width: 20,),
             ResponsiveButton(
                  isResponsive: true,
             )
           ],
         ) 
       ) ],
      ),
    ));
  }
}
