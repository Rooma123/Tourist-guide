import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  ListTile buildListTile(BuildContext context, String title, IconData icon, Function onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      onTap: () => onTap(), // Correctly passing the function
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            padding: const EdgeInsets.only(top: 40),
            alignment: Alignment.center,
            color: const Color.fromARGB(255, 110, 69, 117),
            child: Text(
              "Tourist Guide",
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          const SizedBox(height: 20),

          buildListTile(context, 'Trips', Icons.card_travel, () {
            Navigator.of(context).pushReplacementNamed('/');
          }),

          buildListTile(context, 'Filtered', Icons.filter_list, () {
            Navigator.of(context).pushReplacementNamed('filter_screen');
          }),
        ],
      ),
    );
  }
}
