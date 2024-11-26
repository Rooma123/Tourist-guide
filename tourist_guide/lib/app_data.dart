//import 'package:flutter/material.dart';

import './modeles/category.dart';
import './modeles/trip.dart';

const Categories_data = const [
  Category(
    id: "c1", 
    title: "Mountains", 
    image:"images/mountain.jpeg"),

  Category(
    id: "c2", 
    title: "lakes", 
    image:"images/lakes.jpeg"),

  Category(
    id: "c3", 
    title: "Waterfalls", 
    image:"images/waterfall.jpeg"),

  Category(
    id: "c4", 
    title: "Natural reserves", 
    image:"images/Natural reserves.jpeg"),

  Category(
    id: "c5", 
    title: "summer resort", 
    image:"images/summerresort.jpeg"),

  Category(
    id: "c6", 
    title: "Diving", 
    image:"images/Diving.jpeg"),

  Category(
    id: "c7", 
    title: "snorkelling", 
    image:"images/snorkelling.jpeg"),
    
];
 final trip1 = Trip(
  activities: ['Hiking', 'Camping', 'Photography'],
  program: ['Day 1: Arrive at the base camp', 'Day 2: Hike to the summit', 'Day 3: Return to base camp'],
  duration: 3,
  season: Season.summer,
  tripType: TripType.adventure,
  isInSummer: true,
  isInWinter: false,
  isForFamilies: false,
  id: 't1',
  category: ['c1'],
  title: "Summer Mountain Adventure",
  image: "images/mountain-trip.jpg",
);

final trip2 = Trip(
  activities: ['Snowboarding', 'Skiing', 'Hot Springs'],
  program: ['Day 1: Check-in and snowboarding', 'Day 2: Skiing and hot springs relaxation'],
  duration: 2,
  season: Season.winter,
  tripType: TripType.adventure,
  isInSummer: false,
  isInWinter: true,
  isForFamilies: true,
  id: 't2',
  category: ['c1'],
  title: "Winter Sports Extravaganza",
  image: "images/mountain_trip2.jpeg",
);

final trip3 = Trip(
  activities: ['Rock Climbing', 'Bird Watching', 'Nature Walks'],
  program: ['Day 1: Introduction to rock climbing', 'Day 2: Explore mountain wildlife and bird watching'],
  duration: 2,
  season: Season.spring,
  tripType: TripType.adventure,
  isInSummer: false,
  isInWinter: false,
  isForFamilies: false,
  id: 't3',
  category: ['c1'],
  title: "Spring Climbing Expedition",
  image: "images/mountain_trip3.jpeg",
);

final trip4 = Trip(
  activities: ['Mountain Biking', 'Fishing', 'Camping'],
  program: ['Day 1: Mountain biking adventure', 'Day 2: Fishing by the mountain lake and overnight camping'],
  duration: 2,
  season: Season.Automn,
  tripType: TripType.adventure,
  isInSummer: false,
  isInWinter: false,
  isForFamilies: true,
  id: 't4',
  category: ['c1'],
  title: "Autumn Family Getaway",
  image: "images/mountain_trip4.jpeg",
);


final trip5 = Trip(
  activities: ['Kayaking', 'Fishing', 'Picnicking'],
  program: ['Day 1: Kayaking and exploring the lake', 'Day 2: Fishing and picnic by the shore'],
  duration: 2,
  season: Season.summer,
  tripType: TripType.relaxation,
  isInSummer: true,
  isInWinter: false,
  isForFamilies: true,
  id: 'l1',
  category: [ 'c2'],
  title: "Summer Lake Retreat",
  image: "images/lake_t1.jpeg",
);

final trip6 = Trip(
  activities: ['Ice Fishing', 'Snowshoeing', 'Winter Bonfire'],
  program: ['Day 1: Ice fishing and snowshoeing', 'Day 2: Relax by the winter bonfire'],
  duration: 2,
  season: Season.winter,
  tripType: TripType.adventure,
  isInSummer: false,
  isInWinter: true,
  isForFamilies: false,
  id: 'l2',
  category: [ 'c2'],
  title: "Winter Lake Adventure",
  image: "images/lake-t2.webp",
);

final trip7 = Trip(
  activities: ['Swimming', 'Beach Volleyball', 'BBQ'],
  program: ['Day 1: Swimming and beach volleyball', 'Day 2: BBQ and relaxation by the lake'],
  duration: 2,
  season: Season.spring,
  tripType: TripType.relaxation,
  isInSummer: false,
  isInWinter: false,
  isForFamilies: true,
  id: 'l3',
  category: [ 'c2'],
  title: "Spring Lake Fun",
  image: "images/lake_t3.jpg",
);

final trip8 = Trip(
  activities: ['Canoeing', 'Stargazing', 'Camping'],
  program: ['Day 1: Canoeing and stargazing by the lake', 'Day 2: Overnight camping and nature exploration'],
  duration: 2,
  season: Season.Automn,
  tripType: TripType.adventure,
  isInSummer: false,
  isInWinter: false,
  isForFamilies: false,
  id: 'l4',
  category: [ 'c2'],
  title: "Autumn Lake Expedition",
  image: "images/lake_t4.jpg",
);

final trip9 = Trip(
  activities: ['Hiking', 'Swimming', 'Photography'],
  program: ['Day 1: Hike to the waterfall', 'Day 2: Swimming and photography at the waterfall'],
  duration: 2,
  season: Season.summer,
  tripType: TripType.adventure,
  isInSummer: true,
  isInWinter: false,
  isForFamilies: false,
  id: 'w1',
  category: ['c3'],
  title: "Summer Waterfall Adventure",
  image: "images/waterfall_t1.jpeg",
);

final trip10 = Trip(
  activities: ['Snow Hike', 'Winter Photography', 'Hot Chocolate by the Falls'],
  program: ['Day 1: Snow hike to the frozen waterfall', 'Day 2: Winter photography and hot chocolate'],
  duration: 2,
  season: Season.winter,
  tripType: TripType.relaxation,
  isInSummer: false,
  isInWinter: true,
  isForFamilies: true,
  id: 'w2',
  category: ['c3'],
  title: "Winter Waterfall Getaway",
  image: "images/waterfall_t2.jpg",
);

final trip11 = Trip(
  activities: ['Bird Watching', 'Nature Walk', 'Waterfall Picnic'],
  program: ['Day 1: Bird watching and nature walk to the waterfall', 'Day 2: Picnic by the waterfall'],
  duration: 2,
  season: Season.spring,
  tripType: TripType.relaxation,
  isInSummer: false,
  isInWinter: false,
  isForFamilies: true,
  id: 'w3',
  category: ['c3'],
  title: "Spring Waterfall Escape",
  image: "images/waterfall_t3.jpeg",
);

final trip12 = Trip(
  activities: ['Canyoning', 'Rock Climbing', 'Photography'],
  program: ['Day 1: Canyoning through the waterfall', 'Day 2: Rock climbing and photography at the falls'],
  duration: 3,
  season: Season.Automn,
  tripType: TripType.adventure,
  isInSummer: false,
  isInWinter: false,
  isForFamilies: false,
  id: 'w4',
  category: ['c3'],
  title: "Autumn Waterfall Thrill",
  image: "images/waterfall_t4.jpg",
);

final trip13 = Trip(
  activities: ['Yoga', 'Meditation', 'Wellness Retreat'],
  program: ['Day 1: Yoga and meditation near the waterfall', 'Day 2: Wellness retreat and nature walks'],
  duration: 2,
  season: Season.summer,
  tripType: TripType.relaxation,
  isInSummer: true,
  isInWinter: false,
  isForFamilies: true,
  id: 'w5',
  category: ['c3'],
  title: "Waterfall Wellness Retreat",
  image: "images/waterfall_t5.jpg",
);


final trip14 = Trip(
  activities: ['Wildlife Safari', 'Nature Photography', 'Guided Tour'],
  program: ['Day 1: Wildlife safari and guided tour', 'Day 2: Nature photography and exploration'],
  duration: 2,
  season: Season.summer,
  tripType: TripType.adventure,
  isInSummer: true,
  isInWinter: false,
  isForFamilies: true,
  id: 'nr1',
  category: ['c4'],
  title: "Summer Wildlife Safari",
  image: "images/natural_t1.jpeg",
);

final trip15 = Trip(
  activities: ['Bird Watching', 'Hiking', 'Picnicking'],
  program: ['Day 1: Bird watching and hiking through the reserve', 'Day 2: Picnic and leisure time by the reserve lake'],
  duration: 2,
  season: Season.spring,
  tripType: TripType.relaxation,
  isInSummer: false,
  isInWinter: false,
  isForFamilies: true,
  id: 'nr2',
  category: ['c4'],
  title: "Spring Nature Reserve Escape",
  image: "images/natural_t2.jpeg",
);

final trip16 = Trip(
  activities: ['Snowshoeing', 'Winter Photography', 'Animal Tracking'],
  program: ['Day 1: Snowshoeing and tracking winter wildlife', 'Day 2: Winter photography in the reserve'],
  duration: 2,
  season: Season.winter,
  tripType: TripType.adventure,
  isInSummer: false,
  isInWinter: true,
  isForFamilies: false,
  id: 'nr3',
  category: ['c4'],
  title: "Winter Wilderness Adventure",
  image: "images/natural_t3.jpeg",
);

final trip17= Trip(
  activities: ['Guided Eco Tour', 'Camping', 'Stargazing'],
  program: ['Day 1: Guided eco tour and nature exploration', 'Day 2: Overnight camping and stargazing in the reserve'],
  duration: 2,
  season: Season.Automn,
  tripType: TripType.adventure,
  isInSummer: false,
  isInWinter: false,
  isForFamilies: true,
  id: 'nr4',
  category: ['c4'],
  title: "Autumn Eco-Exploration",
  image: "images/natural_t4.jpeg",
);


final trip18 = Trip(
  activities: ['Swimming', 'Beach Volleyball', 'Spa Day'],
  program: ['Day 1: Swimming and beach volleyball', 'Day 2: Relaxing spa day at the resort'],
  duration: 2,
  season: Season.summer,
  tripType: TripType.relaxation,
  isInSummer: true,
  isInWinter: false,
  isForFamilies: true,
  id: 'sr1',
  category: ['c5'],
  title: "Beachfront Summer Resort Escape",
  image: "images/summer_t1.jpeg",
);

final trip19 = Trip(
  activities: ['Golfing', 'Yoga Retreat', 'Fine Dining'],
  program: ['Day 1: Golfing and yoga sessions', 'Day 2: Fine dining and relaxation at the resort'],
  duration: 3,
  season: Season.summer,
  tripType: TripType.adventure,
  isInSummer: true,
  isInWinter: false,
  isForFamilies: false,
  id: 'sr2',
  category:['c5'],
  title: "Luxury Golf Resort Retreat",
  image: "images/summer_t2.jpeg",
);

final trip20 = Trip(
  activities: ['Water Sports', 'Pool Parties', 'Nightlife'],
  program: ['Day 1: Water sports and pool parties', 'Day 2: Exploring the resort’s nightlife and entertainment'],
  duration: 2,
  season: Season.summer,
  tripType: TripType.adventure,
  isInSummer: true,
  isInWinter: false,
  isForFamilies: false,
  id: 'sr3',
  category: ['c5'],
  title: "Summer Adventure Resort",
  image: "images/summer_t1.jpeg",
);

final trip21 = Trip(
  activities: ['Family Pool Games', 'Kids Club', 'BBQ Night'],
  program: ['Day 1: Pool games and kids club activities', 'Day 2: Family BBQ night and resort entertainment'],
  duration: 2,
  season: Season.summer,
  tripType: TripType.Activities,
  isInSummer: true,
  isInWinter: false,
  isForFamilies: true,
  id: 'sr4',
  category:['c5'],
  title: "Family Summer Resort Getaway",
  image: "images/summer_t4.jpeg",
);

final trip22 = Trip(
  activities: ['Reef Diving', 'Underwater Photography', 'Snorkeling'],
  program: ['Day 1: Reef diving and snorkeling', 'Day 2: Underwater photography and guided dive tours'],
  duration: 3,
  season: Season.summer,
  tripType: TripType.adventure,
  isInSummer: true,
  isInWinter: false,
  isForFamilies: false,
  id: 'd1',
  category: ['c6'],
  title: "Coral Reef Diving Adventure",
  image: "images/diving_t1.jpeg",
);

final trip23 = Trip(
  activities: ['Cave Diving', 'Exploration', 'Night Diving'],
  program: ['Day 1: Cave diving exploration', 'Day 2: Night diving and photography'],
  duration: 2,
  season: Season.Automn,
  tripType: TripType.adventure,
  isInSummer: false,
  isInWinter: false,
  isForFamilies: false,
  id: 'd2',
  category: ['c6'],
  title: "Cave Diving Expedition",
  image: "images/diving_t2.jpeg",
);

final trip24 = Trip(
  activities: ['Wreck Diving', 'Marine Biology Tour', 'Advanced Diving'],
  program: ['Day 1: Wreck diving and marine biology tour', 'Day 2: Advanced diving certification and exploration'],
  duration: 3,
  season: Season.spring,
  tripType: TripType.Exploration,
  isInSummer: false,
  isInWinter: false,
  isForFamilies: true,
  id: 'd3',
  category: ['c6'],
  title: "Wreck Diving and Marine Biology",
  image: "images/diving_t3.jpeg",
);

final trip25 = Trip(
  activities: ['Shark Diving', 'Boat Diving', 'Safety Training'],
  program: ['Day 1: Shark diving experience and safety training', 'Day 2: Boat diving and guided dives'],
  duration: 2,
  season: Season.summer,
  tripType: TripType.adventure,
  isInSummer: true,
  isInWinter: false,
  isForFamilies: false,
  id: 'd4',
  category: ['c6'],
  title: "Shark Diving Experience",
  image: "images/d.jpg",
);

final trip26 = Trip(
  activities: ['Underwater Photography', 'Eco-friendly Diving', 'Relaxation'],
  program: ['Day 1: Eco-friendly diving and underwater photography', 'Day 2: Relaxation and snorkeling'],
  duration: 2,
  season: Season.summer,
  tripType: TripType.relaxation,
  isInSummer: true,
  isInWinter: false,
  isForFamilies: true,
  id: 'd5',
  category: ['c6'],
  title: "Eco-friendly Diving Retreat",
  image: "images/diving_t5.jpeg",
);

final trip27 = Trip(
  activities: ['Coral Reef Snorkeling', 'Beach Relaxation', 'Marine Life Viewing'],
  program: ['Day 1: Coral reef snorkeling and marine life viewing', 'Day 2: Beach relaxation and guided snorkeling tour'],
  duration: 2,
  season: Season.summer,
  tripType: TripType.relaxation,
  isInSummer: true,
  isInWinter: false,
  isForFamilies: true,
  id: 'sn1',
  category: ['c7'],
  title: "Tropical Coral Reef Snorkeling",
  image: "images/snorkelling_t1.jpeg",
);

final trip28 = Trip(
  activities: ['Lagoon Snorkeling', 'Boat Trip', 'Underwater Photography'],
  program: ['Day 1: Lagoon snorkeling and underwater photography', 'Day 2: Boat trip to hidden snorkeling spots'],
  duration: 3,
  season: Season.spring,
  tripType: TripType.adventure,
  isInSummer: false,
  isInWinter: false,
  isForFamilies: true,
  id: 'sn2',
  category: ['c7'],
  title: "Lagoon Snorkeling Adventure",
  image: "images/snorkelling_t2.jpeg",
);

final trip29 = Trip(
  activities: ['Snorkeling with Turtles', 'Eco Tour', 'Snorkeling Lessons'],
  program: ['Day 1: Snorkeling with turtles and eco tour', 'Day 2: Snorkeling lessons and guided reef exploration'],
  duration: 2,
  season: Season.summer,
  tripType: TripType.Exploration,
  isInSummer: true,
  isInWinter: false,
  isForFamilies: true,
  id: 'sn3',
  category: ['c7'],
  title: "Snorkeling with Turtles",
  image: "images/snorkelling_t3.jpeg",
);

final trip30 = Trip(
  activities: ['Snorkeling in Caves', 'Coastal Exploration', 'Night Snorkeling'],
  program: ['Day 1: Snorkeling in caves and coastal exploration', 'Day 2: Night snorkeling and marine life tour'],
  duration: 2,
  season: Season.Automn,
  tripType: TripType.adventure,
  isInSummer: false,
  isInWinter: false,
  isForFamilies: false,
  id: 'sn4',
  category: ['c7'],
  title: "Cave Snorkeling Expedition",
  image: "images/snorkelling_t4.jpeg",
);



final List<Trip> tripData = [
  trip1,
  trip2,
  trip3,
  trip4,
  trip5,
  trip6,
  trip7,
  trip8,
  trip9,
  trip10,
  trip11,
  trip12,
  trip13,
  trip14,
  trip15,
  trip16,
  trip17,
  trip18,
  trip19,
  trip20,
  trip21,
  trip22,
  trip23,
  trip24,
  trip25,
  trip26,
  trip27,
  trip28,
  trip29,
  trip30,
];


