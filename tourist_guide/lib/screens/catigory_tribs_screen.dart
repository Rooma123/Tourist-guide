import 'package:flutter/material.dart';
import '../widgets/trip_item.dart';
import '../app_data.dart';
import '../modeles/trip.dart';

class CatigoryTribsScreen extends StatefulWidget {

  final List<Trip> avaliableTrips;

  const CatigoryTribsScreen({required this.avaliableTrips, super.key});
  

  @override
  State<CatigoryTribsScreen> createState() => _CatigoryTribsScreenState();
}

class _CatigoryTribsScreenState extends State<CatigoryTribsScreen> {
  String? categoryTitle;
  List<Trip>? displayTrip;
  bool _isInit = false;

  @override
  void didChangeDependencies() {
    if (!_isInit) {
      final routeArgument = ModalRoute.of(context)?.settings.arguments as Map<String, String>;
      final String catigoryId = routeArgument['id'] ?? 'Default ID'; 
      categoryTitle = routeArgument['title'] ?? 'Default Title';
      displayTrip = tripData.where((trip) {
        return trip.category.contains(catigoryId);
      }).toList();
      _isInit = true;
    }
    super.didChangeDependencies();
  }

  void _removeTrip(String tripId) {
    setState(() {
      displayTrip?.removeWhere((trip) => trip.id == tripId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle ?? 'Default Title'),
      ),
      body: ListView.builder(
        itemCount: displayTrip?.length,
        itemBuilder: (context, index) {
          return TripItem(
            id: displayTrip![index].id,
            title: displayTrip![index].title,
            image: displayTrip![index].image,
            duration: displayTrip![index].duration,
            tripType: displayTrip![index].tripType,
            season: displayTrip![index].season,
            removeItem: _removeTrip,
          );
        },
      ),
    );
  }
}
