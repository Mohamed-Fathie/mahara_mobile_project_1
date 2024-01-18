import 'package:flutter/material.dart';
import 'package:maharah_project/main_page/trending_courses.dart';
import 'courses.dart';
import 'package:maharah_project/user_profile/user_profile_screen.dart';

class MyContent extends StatelessWidget {
  final String name;
  List  imagePath = [
    'assets/images/css.jpg' ,
    'assets/images/html.jpg'
  ];
  List  courses = [
    'Chat with the Smarteset Ai now',
    'HTML welcome from'
  ];

  List<String> filePaths = [
    'assets/images/course1.jpg',
    'assets/images/course2.jpg',
    'assets/images/course3.jpg',
  ];
  List<String> coursesName = [
    'UI/UX Visual Design',
    'Photography Basics - 101',
    'Basics of Logical Thinking ',
  ];

    MyContent({required this.name});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      children:[ Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:  8.0 , vertical: 0.0),
            child: Row(
              children: [
                Text("Hello, ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),

                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:  0.0,horizontal:  8.0),
            child: Row(
              children: [
                Text( name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),

                ),
                Spacer(),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserProfileScreen(name: name,)),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey,

                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/user_profile_image.png',
                        width: 40,
                        height: 40,
                      ),

                    ),

                  ),
                ),
                SizedBox(width: 15, height: 60,)
              ],
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text("Trending",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                Text("See all",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue
                  ),
                ),
              ],
            ),

          ),
          Container(
            height: 250,
            child: ListView.builder(
              itemCount: 2 ,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Trending(
                    text:courses[index],
                    path: imagePath[index],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text("Most Taken",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                 Text("See all",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue
                  ),
                ),
              ],
            ),

          ),
          Container(

            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Courses(
                    path: filePaths[index],
                    text: coursesName[index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
   ]
    );
  }
}
