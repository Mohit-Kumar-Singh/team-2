import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future _urllaunch(String url) async {
      if (await canLaunch(url)) {
        await launch(
          url,
        );
      } else {
        url = 'https://instagram.com/conatus.akg?igshid=18hg0wyq31kt2';
      }
    }

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('EVENTS'),
            actions: [IconButton(icon: Icon(Icons.share), onPressed: () {})],
          ),
          body: Container(
            height: MediaQuery.of(context).size.height * .9,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Hero(tag: 1, child: Image.asset('IMAGES/R3.png')),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width * .75,
                      height: MediaQuery.of(context).size.height * .1,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * .75,
                        height: MediaQuery.of(context).size.height * .1,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          'R3cursion',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            // fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                  // RichText(text: ),
                  Text('bhhhhhhhhhhhhhhhhhhhhhhhhhhh'),
                  SizedBox(
                    height: 300,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      height: 120,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                _urllaunch(
                                    'https://www.register.teamconatus.com');
                              },
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                    child: Text(
                                  'Register',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 24),
                                )),
                              ),
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

// Stack(
//           children: [
//             // Positioned.fill(
//             //     child: Column(
//             //   children: [
//             //     Expanded(
//             //       child: Container(
//             //         color: Colors.blueGrey[300],
//             //       ),
//             //     ),
//             //     Expanded(
//             //       child: Container(
//             //         color: Colors.white,
//             //       ),
//             //     )
//             //   ],
//             // )),
//             // Container(
//             //   margin: EdgeInsets.only(top: 40),
//             //   child: Align(
//             //     alignment: Alignment.topCenter,
//             //     child: Row(
//             //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //       children: [
//             //         IconButton(
//             //             icon: Icon(Icons.arrow_back_ios),
//             //             onPressed: () {
//             //               Navigator.pop(context);
//             //             }),
//             //       ],
//             //     ),
//             //   ),
//             // ),
//             Align(
//               alignment: Alignment.topCenter,

//             ),
//             Align(
//               alignment: Alignment.center,
//               child: Container(
//                 alignment: Alignment.center,
//                 padding: EdgeInsets.all(8),
//                 width: MediaQuery.of(context).size.width * .75,
//                 height: MediaQuery.of(context).size.height * .1,
//                 margin: EdgeInsets.symmetric(horizontal: 20),
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(20)),
//                 child: Container(
//                   alignment: Alignment.center,
//                   width: MediaQuery.of(context).size.width * .75,
//                   height: MediaQuery.of(context).size.height * .1,
//                   decoration: BoxDecoration(
//                       color: Colors.blueGrey,
//                       borderRadius: BorderRadius.circular(20)),
//                   child: Text(
//                     'R3cursion',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 30,
//                       // fontWeight: FontWeight.bold
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: Container(
//                 margin: EdgeInsets.symmetric(horizontal: 20),
//                 padding: EdgeInsets.symmetric(horizontal: 15),
//                 height: 120,
//                 child: Row(
//                   children: [
//                     // Container(
//                     //   height: 60,
//                     //   width: 70,
//                     //   decoration: BoxDecoration(
//                     //       color: Colors.yellow,
//                     //       borderRadius: BorderRadius.circular(20)),
//                     //   child: Icon(
//                     //     Icons.favorite_border,
//                     //     color: Colors.white,
//                     //   ),
//                     // ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Expanded(
//                       child: Container(
//                         height: 60,
//                         decoration: BoxDecoration(
//                             color: Colors.cyan,
//                             borderRadius: BorderRadius.circular(20)),
//                         child: Center(
//                             child: Text(
//                           'Register',
//                           style: TextStyle(color: Colors.white, fontSize: 24),
//                         )),
//                       ),
//                     )
//                   ],
//                 ),
//                 decoration: BoxDecoration(
//                     color: Colors.grey[200],
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(40),
//                       topRight: Radius.circular(40),
//                     )),
//               ),
//             )
//           ],
//         ),
