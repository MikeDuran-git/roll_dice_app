//import the package for runApp() function
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const  endAlignment = Alignment.bottomRight; //final is a keyword that is used to declare a variable as a constant, compared to const it means that the variable is initialized when accessed

class GradientContainer extends StatelessWidget {
//statelessWidget is a widget that doesn't change over time

  GradientContainer(this.colors,{super.key});

  GradientContainer.purple({super.key}) 
  : colors = const [Colors.purple, Colors.deepPurple];

  final List<Color> colors;
  var activeImage = 'assets/images/dice-1.png'; //this is a string variable that holds the path to the image 'dice-1.png
  void rollDice(){
    activeImage = 'assets/images/dice-2.png'; //this changes the image to 'dice-2.png'
    print('Changing image');
  }

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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(activeImage,width:200,height:200,),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: rollDice,
                  style: TextButton.styleFrom(
                    //padding: const EdgeInsets.only(top: 20),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 20)
                  ), 
                  child: const Text('Roll Dice')
                ),
              ]
            )
          )
        );
  }
}