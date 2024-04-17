//import the package for runApp() function
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const  endAlignment = Alignment.bottomRight; //final is a keyword that is used to declare a variable as a constant, compared to const it means that the variable is initialized when accessed

class GradientContainer extends StatelessWidget {
//statelessWidget is a widget that doesn't change over time

  const GradientContainer(this.colors,{super.key});

  const GradientContainer.purple({super.key}) 
  : colors = const [Colors.purple, Colors.deepPurple];

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors:
            [
              colors[0],
              colors[1],
            ],
            begin: startAlignment,
            end: endAlignment,
            )
        ),
          child: Center(
            child: Image.asset('assets/images/dice-1.png',width:200,height:200,)
          )
        );
  }
}