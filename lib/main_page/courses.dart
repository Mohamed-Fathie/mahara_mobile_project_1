import 'package:flutter/material.dart';


class Courses extends StatelessWidget {
  final String path;
  final String text;
  const Courses({required this.path,required this.text});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Row(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(
                path,
                width: 120,
                height: 70,
                fit: BoxFit.fill,
              ),
            ),
          ),

          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width - 120, // Adjust as needed
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(text,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
              ),
                softWrap: true,
                maxLines:2 ,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
