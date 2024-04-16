import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  
  const StyledText(this.text,{super.key});

  //we must add a property to the class 
  final String text;
  
  @override
  Widget build(context) {
    return  Center(
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 28,
          color: Colors.white,
        ),
      ),
    );
  }
}



