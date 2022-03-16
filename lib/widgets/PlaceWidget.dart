import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:treasures/models/touristPlace.dart';
import 'package:treasures/pages/PlaceDetailScreen.dart';
import 'package:treasures/widgets/styleguide.dart';

class PlaceWidget extends StatelessWidget {
final TouristPlace touristPlace;
 final   PageController pageController;
  final int currentPage;

  const PlaceWidget({Key key, this.touristPlace,this.pageController,this.currentPage}) : super(key: key);
  @override
  Widget build(BuildContext context) {
final screenHeight=MediaQuery.of(context).size.height;
final screenWidth=MediaQuery.of(context).size.width;
     return  InkWell(
      onTap: (){
         Navigator.push(context,MaterialPageRoute(fullscreenDialog: true,builder:(_)
         {return PlaceDetailScreen(touristPlace: touristPlace);}));
      },
      child: AnimatedBuilder(
        animation: pageController,
        builder: (context,child){
          double value=1.0;
          if(pageController.position.haveDimensions){
            value=pageController.page-currentPage;
            value=(1-(value.abs()*0.6)).clamp(0.0, 1.0);
          }
     return Stack(
          children:[
             Align(
               alignment: Alignment.bottomCenter,
               child:ClipPath(
                 clipper:PlaceCardBackgroundClipper(),
                 child:Hero(
                   tag: "background-${touristPlace.name}",
                   child: Container(
            height:screenHeight*0.6 ,
            width: screenWidth*0.9,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors:touristPlace.colors ,
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    )
               ),
          ),
                 ),
               ),
             ),
             Align(
               alignment: Alignment.center,
               child: Image.asset(
                touristPlace.imagePath,
                height:screenHeight*0.55*value ,
                width: screenWidth*0.8,
               ),
             ),
             Padding(
               padding: EdgeInsets.only(left: 48,right: 16,bottom: 16),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Text(touristPlace.name,style: AppTheme.heading),
                   Text("Tap To read more",style: AppTheme.subHeading),
                 ],
               ),
             )
          ],
        );
        }
      
      ),
    );
  }
}
class PlaceCardBackgroundClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path=Path();
    double curveDistance=50;
    path.moveTo(0, size.height*0.4);
    path.lineTo(0, size.height- curveDistance);
    path.quadraticBezierTo(1, size.height-1,curveDistance, size.height);
    path.lineTo(size.width- curveDistance, size.height);
    path.quadraticBezierTo(size.width+1, size.height-1,size.width, size.height- curveDistance);
    path.lineTo(size.width, curveDistance);
    path.quadraticBezierTo(size.width -1, 0,size.width-curveDistance-5, curveDistance/3);
    path.lineTo(curveDistance, size.height * 0.29);
    path.quadraticBezierTo(1, (size.height * 0.30) + 10, 0, size.height * 0.4);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true ;
  }

  
}