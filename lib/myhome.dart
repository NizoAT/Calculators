import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:flutter/material.dart';
import './widgets/calculettebouton.dart';

class myhome extends StatefulWidget {
  final String title;
  const myhome({super.key, required this.title});

  @override
  State<myhome> createState() => _myhome();

}

class _myhome extends  State<myhome> {
  String _history = '';
  String _expression = '';

  void numClick(String text) {
    setState(() => _expression += text);
  }

  void allClear(String text) {
    setState(() {
      _history = '';
      _expression = '';
    });
  }

  void clear(String text) {
    setState(() {
      _expression = '';
    });
  }

  void evaluate(String? text) {
    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();

    setState(() {
      _history = _expression;
      _expression = exp.evaluate(EvaluationType.REAL, cm).toString();
    });
  }

@override
  Widget build(BuildContext context) {
  return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      home: Scaffold(
         backgroundColor: Color(0xFF212A3B),
        body: Container( 
          
         padding: EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Container(
                   child: Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Text(
                    _history,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 24,
                       color: Color(0xFF545F61),
                      ),
                    ),
                  ),
                ),
                  alignment: Alignment(1.0, 1.0),
                ),
                
              ),
            
              Flexible(
                 flex: 1,
                child: Container(
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: const Color(0xFF1A212F),
                  borderRadius: BorderRadius.circular(25.0),
                  border: Border.all(
                    color: const Color(0xFF1A212F),
                    width: 5,
                  ),
                  
                ),
              
              
                  child: Text(
                    _expression,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
               
                alignment: Alignment(1.0, 1.0),
              ),

              ),
              
              
              Flexible(
                flex: 6,
                child: Container(
              //color: Color(0xFF545F61),
               margin: const EdgeInsets.only(top: 10),
               padding: const EdgeInsets.only(top: 0),
                decoration: BoxDecoration(
                  color: const Color(0xFF1A212F),
                  borderRadius: BorderRadius.circular(20.0),
                   
                  ),
                child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: calculettebouton(
                    text: 'AC',
                    fillColor: 0xFF212A3B,
                    textSize: 20,
                    callback: allClear,
                  ),
                  ),
                  Expanded(
                    child:   calculettebouton(
                    text: 'C',
                    fillColor: 0xFF212A3B,
                    callback: clear,
                  ),
                  ),
                  Expanded(
                    child:  calculettebouton(
                    text: '%',
                    fillColor: 0xFF212A3B,
                    callback: numClick,
                  ),
                  ),
                  Expanded(
                    child:  calculettebouton(
                    text: '/',
                    fillColor: 0xFF5E749D,
                    callback: numClick,
                  ),
                  ),
                
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               

                children: <Widget>[
                 
                 Expanded(
                    child:  calculettebouton(
                    text: '7',
                     fillColor: 0xFF212A3B,
                    callback: numClick,
                  ),
                  ),
                  Expanded(
                    child:  calculettebouton(
                    text: '8',
                     fillColor: 0xFF212A3B,
                    callback: numClick,
                  ),
                  ),
                  Expanded(
                    child:  calculettebouton(
                    text: '9',
                     fillColor: 0xFF212A3B,
                    callback: numClick,
                  ),
                  ),
                  Expanded(
                    child:  calculettebouton(
                    text: '*',
                    fillColor: 0xFF5E749D,
                    textSize: 28,
                    callback: numClick,
                  ),
                  ),
               
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                   Expanded(
                    child:  calculettebouton(
                    text: '4',
                     fillColor: 0xFF212A3B,
                    callback: numClick,
                  ),
                  ),
                   Expanded(
                    child: calculettebouton(
                    text: '5',
                     fillColor: 0xFF212A3B,
                    callback: numClick,
                  ),
                  ),
                   Expanded(
                    child:  calculettebouton(
                    text: '6',
                     fillColor: 0xFF212A3B,
                    callback: numClick,
                  ),
                  ),
                   Expanded(
                    child: calculettebouton(
                    text: '-',
                    fillColor: 0xFF5E749D,
                    textSize: 26,
                    callback: numClick,
                  ),
                  ),
                   
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Expanded(
                    child:  calculettebouton(
                    text: '1',
                     fillColor: 0xFF212A3B,
                    callback: numClick,
                  ),
                  ),
                  Expanded(
                    child: calculettebouton(
                    text: '2',
                     fillColor: 0xFF212A3B,
                    callback: numClick,
                  ),
                  ),
                  Expanded(
                    child: calculettebouton(
                    text: '3',
                     fillColor: 0xFF212A3B,
                    callback: numClick,
                  ),
                  ),
                  Expanded(
                    child: calculettebouton(
                    text: '+',
                    fillColor: 0xFF5E749D,
                    textSize: 26,
                    callback: numClick,
                  ),
                  ),
                  
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Expanded(
                    child: calculettebouton(
                    text: '.',
                     fillColor: 0xFF212A3B,
                    callback: numClick,
                  ),
                  ),
                  Expanded(
                    child: calculettebouton(
                    text: '0',
                     fillColor: 0xFF212A3B,
                    callback: numClick,
                  ),
                  ),
                  Expanded(
                    child: calculettebouton(
                    text: '00',
                     fillColor: 0xFF212A3B,
                    callback: numClick,
                    textSize: 26,
                  ),
                  ),
                  Expanded(
                    child: calculettebouton(
                    text: '=',
                    fillColor: 0xFF5E749D,
                    callback: evaluate,
                  ),
                  ),
                 
                ],
              )
            ]),
 
                )
              ),
               
               
             
            ],
          ),
        ),
      ),
    );
  }

}