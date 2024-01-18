import 'package:flutter/material.dart';

class Trending extends StatelessWidget {

  final String path;
  final String text;
  const Trending({super.key, required this.path,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 240,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(70),
        color: Colors.grey,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [


                        Colors.red,
                        Colors.indigo,
                        Color(0xffCC4E4E),
                        Colors.red,
                        Colors.indigo,
                        Colors.pinkAccent,
                        Colors.purple,

                        Colors.cyanAccent
                      ],
                      begin: Alignment.bottomRight,
                      end: Alignment.topRight,
                    ),

                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                       bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFCEAEA),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0.0),
                       topRight: Radius.circular(0.0),
                      bottomLeft: Radius.circular(40.0),
                       bottomRight: Radius.circular(40.0),
                    ),
                  ),

                  child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                    text,
                    style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    ),
                    ),
                  ),
                ),
              ),
              ),
            ],
          ),
          Positioned(
            left: 20,
            
            child: ClipOval(
              child: Container(
                 child: Image.asset(
                  path,
                   height: 60.0,
                   width: 60.0,
                   fit: BoxFit.cover,
                 ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
