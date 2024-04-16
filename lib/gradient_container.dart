//import the package for runApp() function
import 'package:flutter/material.dart';
import 'package:roll_dice_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const  endAlignment = Alignment.bottomRight; //final is a keyword that is used to declare a variable as a constant, compared to const it means that the variable is initialized when accessed

class GradientContainer extends StatelessWidget {
//statelessWidget is a widget that doesn't change over time

  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors:
            [
              Colors.purple, 
              Colors.blue
            ],
            begin: startAlignment,
            end: endAlignment,
            )
        ),
          child: const StyledText("i am MIKE DURAN!"),
        );
  }
}