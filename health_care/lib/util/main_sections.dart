import 'package:flutter/material.dart';

class MainSections extends StatelessWidget {

final icon;
final String main_sectionsName;
final int numberOfmain_section;
final color; 

  const MainSections({
     Key? key,
     required this.icon,
    required this.main_sectionsName,
    required this.numberOfmain_section,
    required this.color,
     }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child:
                               Container(
                                padding: EdgeInsets.all(16),
                                color: color,
                                child: Icon(
                                  icon,
                                  ),
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              // title
                              Text(
                                main_sectionsName,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                               ),
                               SizedBox(
                                height: 5,
                                ),
                              // subtitle
                              Text(
                               numberOfmain_section.toString()+ " write here",
                             style: TextStyle(
                             fontWeight: FontWeight.bold,
                             color: Colors.grey,
                             fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              Icon(Icons.more_horiz),
            ],
         ),
      ),
    );
  }
}