import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../app_data.dart';

class TripDetails extends StatelessWidget {
  const TripDetails({super.key});

  Widget Buildsection_title(BuildContext context, String titleText) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      alignment: Alignment.topLeft,
      child: Text(
        titleText,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }

  Widget Buildsectioncontainer(Widget child) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 15),
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final trip_id = ModalRoute.of(context)?.settings.arguments as String;
    final selected_trip = tripData.firstWhere((trip) {
      return trip.id == trip_id;
    });

    return Scaffold(
      appBar: AppBar(
        title: Text("${selected_trip.title}"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.asset(
                selected_trip.image,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Buildsection_title(context, "Activities"),
            Buildsectioncontainer(
              ListView.builder(
                itemCount: selected_trip.activities.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 0.3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: Text(
                        selected_trip.activities[index],
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Buildsection_title(context, "Daily Programs"),
            Buildsectioncontainer(
              ListView.builder(
                itemCount: selected_trip.program.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: 28,
                          child: Text('${index + 1} day'),
                        ),
                        title: Text(selected_trip.program[index]),
                      ),
                      Divider(),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).pop(trip_id);
        },
        child:Icon(Icons.delete) ,
        ),
    );
  }
}
