import 'package:flutter/material.dart';
import 'screen2.dart';

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
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                    width: 150,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        //  boxShadow: shadowList,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text('ATTENDANCE')),
                Container(
                    width: 150,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        // boxShadow: shadowList,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text('QUERY')),
                Container(
                    width: 150,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        // boxShadow: shadowList,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text('PROJECT UPDATE')),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height * .754,
            child: ListView(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Screen2()));
                  },
                  child: Container(
                    width: 50,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      // boxShadow: shadowList,
                    ),
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.all(10),
                          child: Align(
                            child: Hero(
                                tag: 1, child: Image.asset('IMAGES/R3.png')),
                          ),
                        ),
                        Text('R3CURSION')
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => Screen2()));
                  },
                  child: Container(
                    width: 50,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      // boxShadow: shadowList,
                    ),
                    margin: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.all(10),
                          child: Align(child: Image.asset('IMAGES/quest.png')
                              //child: Image.asset('IMAGES/quest.png')
                              // child: Hero(
                              //     tag: 1, child: Image.asset('IMAGES/quest.png')),
                              ),
                        ),
                        Text('QUEST\'20 ')
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 50,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.all(10),
                          child: Align(
                              child: Image.asset('IMAGES/doc.png',
                                  fit: BoxFit.fitWidth)
                              //  Hero(
                              //     tag: 1,
                              //     child: Image.asset('IMAGES/R3.png')),
                              ),
                        ),
                        Text('DAWN OF CRISIS')
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => Screen2()));
                  },
                  child: Container(
                    width: 50,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      // boxShadow: shadowList,
                    ),
                    margin: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.all(10),
                          child: Align(child: Image.asset('IMAGES/cod.png')
                              // Hero(
                              //     tag: 1,
                              //     child: Image.asset('IMAGES/R3.png')),
                              ),
                        ),
                        Text('COD')
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
