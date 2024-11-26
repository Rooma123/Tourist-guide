// ignore_for_file: constant_identifier_names

enum Season {
  winter,
  spring,
  summer,
  Automn
}

enum TripType{
  relaxation,
  adventure,
  Exploration,
  Recovery,
  Activities,
  Therapy
}


class Trip{
  final String id;
  final List<String> category;
  final String title;
  final String image;
  final List<String> activities;
  final List<String> program;
  final int duration;
  final Season season;
  final TripType tripType;
  final bool isInSummer;
  final bool isInWinter;
  final bool isForFamilies;

  Trip({
    required this.activities,
    required this.program,
    required this.duration,
    required this.season,
    required this.tripType,
    required this.isInSummer,
    required this.isInWinter,
    required this.isForFamilies,
    required this.id,
    required this.category,
    required this.title,
    required this.image,
  });
}
