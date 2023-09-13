import 'package:flutter/material.dart';
import 'package:health_care/util/emoticon_face.dart';
import 'package:health_care/util/main_sections.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                // greetings row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  // Health Care
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Health Care",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8,
                     ),
                      Text(
                        "18 Jan, 2022",
                        style: TextStyle(color: Colors.blue[200]),
                      )
                    ],
                  ),
              
                 // Notification
                 Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(12),
                  ),
                   padding: EdgeInsets.all(12),
                   child: Icon(
                    Icons.notifications,
                   color: Colors.white,
                   ),
                 )
               ],
               ),
            
               SizedBox(
               height: 25,
              ),
            
               // search bar
               Container(
              decoration: BoxDecoration(
                color: Colors.blue[600],
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(12),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                      ),
                  Text(
                    "Search",
                    style: TextStyle(
                      color: Colors.white,
                      ),
                    ),
                ],
              ),
               ),
            
            
            
               SizedBox(
               height: 25,
              ),
            
              // how do you feel?
            
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "How do you feel?",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 18,
                         fontWeight: FontWeight.bold,
                            ),
                          ),
            
                          Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                            ),
                ],
              ),
            
                 SizedBox(
               height: 25,
              ),
            
                  // 4 different faces
                  Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              // bad
              Column(
              children: [
                EmoticonFace(
                  emoticonFace: "😫",
                ),
                SizedBox(height: 8,
                ),
                Text(
                  "Bad",
                  style: TextStyle(color: Colors.white),
                  ),
              ],
              ),
            
              // fine
              Column(
              children: [
                EmoticonFace(
                  emoticonFace: "🙂",
                ),
                SizedBox(height: 8,
                ),
                Text(
                  "Fine",
                  style: TextStyle(color: Colors.white),
                  ),
              ],
              ),
              // well
                Column(
              children: [
                EmoticonFace(
                  emoticonFace: "😄",
                ),
                SizedBox(height: 8,
                ),
                Text(
                  "Well",
                  style: TextStyle(color: Colors.white),
                  ),
              ],
              ),
            
              // excellent
                Column(
              children: [
                EmoticonFace(
                  emoticonFace: "🥳",
                ),
                SizedBox(height: 8,
                ), 
                Text(
                  "Excellent",
                  style: TextStyle(color: Colors.white),
                               ),
                             ],
                           ),
                         ],
                       ), 
                     ],
                   ),   
                  ),
                  SizedBox(
                    height: 25,
                 ),
                 Expanded(
                   child: Container(
                    padding: EdgeInsets.all(25),
                    color: Colors.grey[200],
                    child: Center(
                    child: Column(
                    children: [
                      // exercise heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Main sections",
                            style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 20,
                             ),
                            ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                        ),

                      // listview of exercise
                      Expanded(
                        child: ListView(
                          children: [
                            MainSections(
                              icon: Icons.favorite,
                              main_sectionsName: "Laboratory Services",
                                numberOfmain_section: 16,
                                color: Colors.orange
                            ),
                           MainSections(
                              icon: Icons.person,
                              main_sectionsName: "Visual Consultation",
                              numberOfmain_section: 8,
                              color: Colors.green
                            ),
                           MainSections(
                              icon: Icons.star,
                              main_sectionsName: "Home Visit",
                              numberOfmain_section: 20,
                              color: Colors.pink
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16)
                       ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}