import 'package:flutter/material.dart';
import 'package:tourist_guide/app_data.dart';
import 'package:tourist_guide/screens/tabs_screen.dart';
import '../screens/catigory_tribs_screen.dart';
import './screens/trip_details.dart';
import './screens/filters_screen.dart';
import './modeles/trip.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> filters = {
    'summer': false,
    'winter': false,
    'family': false,
  };

  List<Trip> _avaliableTrips = tripData;

  void _changeFilters(Map<String, bool> filterData) {
    setState(() {
      filters = filterData;

      _avaliableTrips = tripData.where((trip) {
        if (filters['summer']! && !trip.isInSummer) return false;
        if (filters['winter']! && !trip.isInWinter) return false;
        if (filters['family']! && !trip.isForFamilies) return false;
        return true;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tourist Guide',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(226, 143, 58, 183),
        ),
        fontFamily: 'Noto_Sans',
        textTheme: ThemeData.dark().textTheme.copyWith(
              displayLarge: const TextStyle(
                fontSize: 22,
                fontFamily: 'Noto_Sans',
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              bodyLarge: const TextStyle(
                fontSize: 16,
                fontFamily: 'Noto_Sans',
                color: Color.fromARGB(179, 75, 75, 75),
              ),
              titleMedium: const TextStyle(
                fontSize: 18,
                fontFamily: 'Noto_Sans',
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 53, 53, 53),
              ),
              titleLarge: const TextStyle(
                fontSize: 22,
                fontFamily: 'Noto_Sans',
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 20, 20, 20),
              ),
              labelLarge: TextStyle(
                fontSize: 14,
                fontFamily: 'Noto_Sans',
                fontWeight: FontWeight.bold,
                color: Colors.purple[50],
              ),
            ),
        useMaterial3: true,
      ),
      home: TabsScreen(),
      routes: {
        'catigory_trip': (context) => CatigoryTribsScreen(avaliableTrips: _avaliableTrips),
        'trip_details': (context) => const TripDetails(),
        'filter_screen': (context) => FiltersScreen(_changeFilters),
      },
    );
  }
}

