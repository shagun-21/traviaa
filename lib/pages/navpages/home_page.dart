import 'package:flutter/material.dart';
import 'package:traviaa/misc/colors.dart';
import 'package:traviaa/widgets/app_large_text.dart';


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
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
        //discover text container
        Container(
          margin: EdgeInsets.only(left: 20),
          child: AppLargeText(text: "Discover"),
        
        ),
         SizedBox(height: 30,),
         Container(
           
           child: Align(
             alignment: Alignment.centerLeft,
             child: TabBar(
               indicator: circleTabIndicator(color: AppColors.mainColor, radius: 4),
               indicatorSize: TabBarIndicatorSize.label,
               labelPadding: const EdgeInsets.only(left: 20,right: 20),
               isScrollable: true,
               labelColor: Colors.black,
               unselectedLabelColor: Colors.grey,
               controller: _tabController
               ,tabs: [
               
               Tab(text: "Places"),
               Tab(text:"Inspirations"),
               Tab(text: "Emotions",)
             ]),
           ),
         ),
         Container(
           padding: const EdgeInsets.only(left: 20),
           height: 300,
           width: double.maxFinite,
           child: TabBarView(
             controller: _tabController,
             children: [
               ListView.builder(
                 scrollDirection: Axis.horizontal,
                 itemCount: 3,
                 itemBuilder: (BuildContext context, int index) { 
                   return Container(
                     margin: const EdgeInsets.only(right: 15,top: 10),
                   width: 200,
                   height: 300,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     image: DecorationImage(image: AssetImage("lib/img/mountain.jpeg"),
                     fit: BoxFit.cover)
                     
                   ),
                 );
                  },
                  
               ),
              Text("there"),
              Text("bye")
             ],
           ),
         ),
      //start from here now
      
      ]),
    );
  }
}

class circleTabIndicator extends Decoration{
  final Color color;
  double radius;
  circleTabIndicator({required this.color,required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _circlePainter(color:color,radius:radius);
  }

 

}
 class _circlePainter extends BoxPainter{
   final Color color;
  double radius;
  _circlePainter({required this.color,required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    // TODO: implement paint
    Paint _paint=Paint();
    _paint.color=color;
    _paint.isAntiAlias=true;
    final Offset circleOffset =Offset(configuration.size!.width/2-radius/2,configuration.size!.height);
    canvas.drawCircle(offset+circleOffset, radius, _paint);
  }
    
  } 