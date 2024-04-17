//import the package for runApp() function
import 'package:flutter/material.dart';
import 'package:roll_dice_app/gradient_container.dart';



void main() {
 
 const List<Color> colors = [Colors.green, Colors.red];

  //this is the body of the main function, it's a widget tree
  runApp(
    const MaterialApp(
       home: Scaffold(
        body: GradientContainer.purple()
      )
    ) 
  );
}





