import 'package:conatus/pages/R3.dart';
import 'package:conatus/widgets/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:conatus/widgets/popup.dart';

import 'package:conatus/widgets/eventpost.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .9,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .09,
            margin: EdgeInsets.all(5),
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                PopUp(
                  title: 'ATTENDANCE',
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "September 27, 2020",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w400),
                          ),
                        ),
                        // SizedBox(
                        //   height: 90,
                        // ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Present',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.green,
                                ),
                              ),
                              Text(
                                'Absent',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
                PopUp(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Ask a question'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: InputDecoration(labelText: 'QUERY'),
                            maxLines: 1,
                          ),
                        ),
                        smallButton('Submit', () {}, Colors.blueGrey)
                      ],
                    ),
                    title: 'QUERY'),
                PopUp(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Project Update'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              //     border: OutlineInputBorder(
                              //         borderRadius:
                              //             BorderRadius.all(Radius.circular(20))),
                              //hintText: '',
                              labelText: 'Project Name'),
                          maxLines: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              // border: OutlineInputBorder(
                              //     borderRadius:
                              //         BorderRadius.all(Radius.circular(20))),
                              //hintText: '',
                              labelText: 'Project Description'),
                          maxLines: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              // border: OutlineInputBorder(
                              //     borderRadius:
                              //         BorderRadius.all(Radius.circular(20))),
                              //hintText: '',
                              labelText: 'GitHub Link'),
                          maxLines: 1,
                        ),
                      ),
                      smallButton('Submit', () {}, Colors.blueGrey)
                    ],
                  ),
                  title: 'PROJECT UPDATE',
                )
              ],
            ),
          ),
          // SizedBox(
          //   height: 10,
          // ),
          Container(
            height: MediaQuery.of(context).size.height * .754,
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                // GestureDetector(
                //   onTap: () {
                //     Navigator.push(context,
                //         MaterialPageRoute(builder: (context) => Screen2()));
                //   },
                //   child: Container(
                //     width: 50,
                //     height: 160,
                //     decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(20),
                //       // boxShadow: shadowList,
                //     ),
                //     margin: EdgeInsets.all(20),
                //     child: Row(
                //       children: [
                //         Container(
                //           decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(20)),
                //           padding: EdgeInsets.all(10),
                //           child: Align(
                //             child: Hero(
                //                 tag: 1, child: Image.asset('IMAGES/R3.png')),
                //           ),
                //         ),
                //         Text('R3CURSION')
                //       ],
                //     ),
                //   ),
                // ),
                Eventpost(
                  title: 'R3CURSION',
                  image: 'IMAGES/R3.png',
                  tag: 1,
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Screen2()));
                  },
                ),
                Eventpost(
                  image: 'IMAGES/quest.png',
                  title: 'QUEST\'20 ',
                  tag: 3,
                  ontap: () {},
                ),
                Eventpost(
                  title: 'DAWN OF CRISIS',
                  image: 'IMAGES/doc.png',
                  tag: 4,
                  ontap: () {},
                ),
                Eventpost(
                  image: 'IMAGES/cod.png',
                  title: 'COD',
                  tag: 5,
                  ontap: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
