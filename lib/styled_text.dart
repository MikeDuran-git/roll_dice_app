import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  
  const StyledText(String text,{super.key}) : OutputText = text;

  //we must add a property to the class 
  // ignore: non_constant_identifier_names
  final String OutputText;
  
  @override
  Widget build(context) {
    return  Center(
      child: Text(
        OutputText,
        style: const TextStyle(
          fontSize: 28,
          color: Colors.white,
        ),
      ),
    );
  }
}



