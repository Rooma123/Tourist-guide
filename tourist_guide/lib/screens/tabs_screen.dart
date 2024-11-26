// import 'package:flutter/material.dart';
// import '../screens/categores_screen.dart';
// import '../screens/Favorite_screen.dart';

// class TabsScreen extends StatelessWidget {
//   const TabsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("Torist Guide"),
//           bottom: TabBar(
//             tabs: [
//               Tab(
//                 icon: Icon(Icons.dashboard),
//                 text: "Catigories",
//               ),
//               Tab(
//                 icon: Icon(Icons.star),
//                 text: "Favorite",
//               ),
//             ]),
//         ),
//         body: TabBarView(
//           children: [
//             CategoresScreen(),
//             FavoriteScreen(),
//           ],),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import '../screens/categores_screen.dart';
// import '../screens/Favorite_screen.dart';

// class TabsScreen extends StatefulWidget {
//   const TabsScreen({super.key});

//   @override
//   State<TabsScreen> createState() => _TabsScreenState();
// }

// class _TabsScreenState extends State<TabsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return }

//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("Torist Guide"),
//           bottom: TabBar(
//             tabs: [
//               Tab(
//                 icon: Icon(Icons.dashboard),
//                 text: "Catigories",
//               ),
//               Tab(
//                 icon: Icon(Icons.star),
//                 text: "Favorite",
//               ),
//             ]),
//         ),
//         body: TabBarView(
//           children: [
//             CategoresScreen(),
//             FavoriteScreen(),
//           ],),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import '../screens/categores_screen.dart';
import '../screens/Favorite_screen.dart';
import '../widgets/app_drawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  void _selectScreen(int index){
    setState(() {
      _selectedscreenIndex=index;
    });
  }

  int _selectedscreenIndex =0;

  final List<Map<String,Object>> _screens =[
    {
      'screen':CategoresScreen(),
      'title':"Trip Catigories"
    },
        {
      'screen':FavoriteScreen(),
      'title':"Favorite"
    },
    
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_selectedscreenIndex]['title'] as String),
        
      ),
      drawer: AppDrawer(),
      body: _screens[_selectedscreenIndex]['screen'] as Widget, 
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Color.fromARGB(255, 155, 63, 171),
        selectedItemColor: Color.fromARGB(255, 104, 10, 112),
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedscreenIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: "Catigories"),
            BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Favorite")
        ],),
    );
  }
}
