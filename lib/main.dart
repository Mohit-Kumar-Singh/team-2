import 'package:conatus/pages/settings.dart';
import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:flutter/material.dart';
import 'pages/mainPage.dart';
import 'pages/search.dart';
import 'widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conatus',
      theme: ThemeData(
          primarySwatch: Colors.blueGrey, primaryColor: Colors.blueGrey[800]),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  FancyDrawerController _controller;
  Widget showpage = MainPage();
  DrawerState state = DrawerState.closed;
  bool isdraweropen = true;
  Color brown = Color.fromRGBO(31, 26, 22, 11);

  void page(int i) {
    setState(() {
      if (i == 0) {
        showpage = MainPage();
      }
      if (i == 1) {
        showpage = Search();
      }
      if (i == 3) {
        showpage = Setting();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = FancyDrawerController(
        vsync: this, duration: Duration(milliseconds: 250))
      ..addListener(() {
        setState(() {
          // isdraweropen = true;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FancyDrawerWrapper(
        itemGap: 00,
        cornerRadius: 40,
        backgroundColor: Theme.of(context).primaryColor,
        controller: _controller,
        drawerItems: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('IMAGES/mypic.jpg'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mohit Kumar Singh',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text('App Developer',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ],
                    )
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customButton(
                      'SEARCH',
                      Icons.search,
                      () {
                        _controller.close();
                        page(1);
                        setState(() {
                          isdraweropen = true;
                        });
                      },
                    ),
                    customButton('MEETINGS', Icons.bookmark_border, () {
                      _controller.close();
                      page(0);
                      setState(() {
                        isdraweropen = true;
                      });
                    }),
                    customButton('PROFILE', Icons.person, () {
                      _controller.close();
                    }),
                    customButton('ABOUT US', Icons.account_balance, () {})
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        _controller.close();
                        page(3);
                        setState(() {
                          isdraweropen = true;
                        });
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'settings',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 2,
                      height: 20,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Log out',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
        ],

        child: Scaffold(
            appBar: AppBar(
              shadowColor: Colors.transparent,
              elevation: 0,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isdraweropen
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              isdraweropen = false;
                              _controller.open();
                            });
                          },
                          icon: Icon(
                            Icons.menu,
                            color: Colors.black,
                          ),
                        )
                      : IconButton(
                          onPressed: () {
                            setState(() {
                              isdraweropen = true;
                              _controller.close();
                            });
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ),
                        ),
                  Text(
                    "Conatus",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              backgroundColor: Colors.transparent,
            ),
            body: showpage),
        // ),
      ),
    );
  }
}
