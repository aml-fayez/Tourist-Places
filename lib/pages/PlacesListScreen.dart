import 'package:flutter/material.dart';
import 'package:treasures/models/touristPlace.dart';
import 'package:treasures/widgets/PlaceWidget.dart';
import 'package:treasures/widgets/styleguide.dart';
class PlacesListScreen extends StatefulWidget {
@override
  _PlacesListScreenState createState() => _PlacesListScreenState();
}

class _PlacesListScreenState extends State<PlacesListScreen> {
PageController _pageController;
int currentPage = 0;
   void initState() {
  super.initState();
  _pageController = PageController(
  viewportFraction: 1.0,
  initialPage: currentPage,
  keepPage: false
    );
  }
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:Icon(Icons.arrow_back_ios),
        actions: [
          Padding(padding: EdgeInsets.only(right: 16),
          child:Icon(Icons.search) ,)
        ],),
      body:
       SafeArea(
         child: Padding(
           padding: const EdgeInsets.only(bottom: 16),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: const EdgeInsets.only(left: 32,top: 8),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: "Luxor and Aswan",style: AppTheme.display1),
                      TextSpan(text: "\n"),
                      TextSpan(text: "Landmarks",style: AppTheme.display2),
                    ]
                  ),
                ),
              ),
              Expanded(
              child: PageView(
                      physics: ClampingScrollPhysics(),
                      controller: _pageController,
                      children:<Widget>[
                        for(var i = 0; i < TouristicPlaces.length; i++)
                          PlaceWidget(touristPlace: TouristicPlaces[i],pageController: _pageController, currentPage: i )
                    ],
                 ),
                ),
            ],
      ),
         ),
       ),
    );
  }
}