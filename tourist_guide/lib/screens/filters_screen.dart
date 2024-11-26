import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class FiltersScreen extends StatefulWidget {
  final Function savedFilters;

  const FiltersScreen(this.savedFilters, {super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _isInSummer = false;
  var _isInWinter = false;
  var _isForFamily = false;

  // Helper function to build a switch tile
  SwitchListTile buildSwitchListTile(
      String title, String subtitle, bool currentValue, Function(bool) updateValue) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      value: currentValue,
      onChanged: (newValue) {
        setState(() {
          updateValue(newValue);
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filtered Page"),
        actions: [
          IconButton(
            onPressed: () {
              final selectedFilters = {
                'summer': _isInSummer,
                'winter': _isInWinter,
                'family': _isForFamily,
              };
              widget.savedFilters(selectedFilters);  // Call the savedFilters function with the selected filters
            },
            icon: const Icon(Icons.save),
          )
        ],
      ),
      drawer: const AppDrawer(),
      body: Column(
        children: [
          const SizedBox(height: 40),
          Expanded(
            child: ListView(
              children: [
                buildSwitchListTile(
                  'Summer Trips',
                  'Show trips only in summer',
                  _isInSummer,
                  (newValue) => _isInSummer = newValue,
                ),
                buildSwitchListTile(
                  'Winter Trips',
                  'Show trips only in winter',
                  _isInWinter,
                  (newValue) => _isInWinter = newValue,
                ),
                buildSwitchListTile(
                  'Family Trips',
                  'Show trips only for families',
                  _isForFamily,
                  (newValue) => _isForFamily = newValue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
