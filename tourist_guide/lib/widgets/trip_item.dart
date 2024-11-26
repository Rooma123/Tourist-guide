import 'package:flutter/material.dart';
import '../modeles/trip.dart';
//import '../screens/trip_details.dart';

class TripItem extends StatelessWidget {
  const TripItem({
    super.key, 
    required this.title, 
    required this.image, 
    required this.duration, 
    required this.tripType, 
    required this.season, required this.id, 
    required this.removeItem
  });

  final String title;
  final String id;
  final String image;
  final int duration;
  final TripType tripType;
  final Season season;
  final Function removeItem;

  String get seasonText {
    switch (season) {
      case Season.winter:
        return "Winter";
      case Season.summer:
        return "Summer";
      case Season.spring:
        return "Spring";
      case Season.Automn:
        return "Autumn";
      default:
        return "Unknown";
    }
  }

  String get tripTypeText {
    switch (tripType) {
      case TripType.relaxation:
        return "Relaxation";
      case TripType.adventure:
        return "Adventure";
      case TripType.Exploration:
        return "Exploration";
      case TripType.Recovery:
        return "Recovery";
      case TripType.Activities:
        return "Activities";
      case TripType.Therapy:
        return "Therapy";
      default:
        return "Unknown";
    }
  }

  void selectTrip(BuildContext context) {
    Navigator .of(context).pushNamed("trip_details",
    arguments:id )
    .then((result) {
      if(result!=null){
        removeItem(result);
      }
    })
    ;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        selectTrip(context);
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 7,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.asset(
                    image,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 250,
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.8),
                      ],
                      stops: [0.6, 1],
                    ),
                  ),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.displayLarge,
                    overflow: TextOverflow.fade,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.sunny,
                        color: const Color.fromARGB(255, 151, 82, 163),
                      ),
                      SizedBox(width: 6),
                      Text(
                        "$duration days",
                        style: Theme.of(context).textTheme.bodyLarge,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.today,
                        color: const Color.fromARGB(255, 151, 82, 163),
                      ),
                      SizedBox(width: 6),
                      Text(
                        seasonText,
                        style: Theme.of(context).textTheme.bodyLarge,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.family_restroom,
                        color: const Color.fromARGB(255, 151, 82, 163),
                      ),
                      SizedBox(width: 6),
                      Text(
                        tripTypeText,
                        style: Theme.of(context).textTheme.bodyLarge,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
