
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:treasures/models/touristPlace.dart';
import 'package:treasures/widgets/styleguide.dart';

class PlaceDetailScreen extends StatefulWidget {
final TouristPlace touristPlace;

  const PlaceDetailScreen({Key key, this.touristPlace}) : super(key: key);

  @override
  _PlaceDetailScreenState createState() => _PlaceDetailScreenState();
}

class _PlaceDetailScreenState extends State<PlaceDetailScreen> {
  @override
  Widget build(BuildContext context) {
 final screenHeight=MediaQuery.of(context).size.height;
     return Scaffold(
      body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            DecoratedBox(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: widget.touristPlace.colors,
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft
                  )
              ),

            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 16),
                    child: IconButton(
                      icon: Icon(Icons.close),
                      iconSize: 40,
                      color: Colors.white.withOpacity(0.9),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),),
                      Align(
                        alignment: Alignment.topRight,
                        child: Image.asset(widget.touristPlace.imagePath,
                            height: screenHeight * 0.45,
                          ),
                        ),
                    Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 8),
                  child:Text(widget.touristPlace.name,style:AppTheme.heading),),
                  Padding(padding: EdgeInsets.fromLTRB(32, 0, 8, 16),
                  child: Text(widget.touristPlace.description,style:AppTheme.subHeading)),
                  ],
                ),
            ),
          ]
      ),
    );
  }
}