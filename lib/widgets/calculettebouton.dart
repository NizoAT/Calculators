import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class calculettebouton extends StatelessWidget {

  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callback;

  const calculettebouton({
    Key? key,
    this.text = '',
    this.fillColor = 0,
    this.textColor = 0xFFF8F8F9,
    this.textSize = 25,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      
      child: SizedBox(
        width: 55,
        height: 55,
       
        child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            foregroundColor: Color(textColor),
            
            backgroundColor: fillColor != null ? Color(fillColor) : null,
          ),
          onPressed: () {
            callback(text);
          },
           
          child: Text(
            text,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: textSize,
                
              ),
            ),
          ),
        ),
      ),
    );
  }
}

