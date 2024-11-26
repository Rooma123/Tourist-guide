import 'package:flutter/material.dart';
//import '../screens/catigory_tribs_screen.dart';

class CatigoryItem extends StatelessWidget {
  const CatigoryItem({super.key, required this.title, required this.image, required this.id});

  final String title;
  final String image;
  final String id;


  void selectCatigory(BuildContext context){
    Navigator.of(context).pushNamed(
      'catigory trip',
      arguments: {
        'id':id,
        'title':title
        
      }
    );
    
    
  }


  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        selectCatigory(context);
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            child: Image.asset(image,
            height: 250,
            fit: BoxFit.cover,),
          ),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(title,
             style: Theme.of(context).textTheme.displayLarge,
            ),
            
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          )
        ],
      ),
    );
  }
}