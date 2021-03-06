import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Attendance extends StatefulWidget {
  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  bool present = false;

  Widget day(bool present) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white.withOpacity(0.8),
        // (present ? Colors.green
        //     : (absent ? Colors.redAccent : Colors.white)),
      ),
      child: Row(
        children: [
          present
              ? Icon(FontAwesomeIcons.solidCheckCircle, color: Colors.green)
              : Icon(FontAwesomeIcons.solidTimesCircle, color: Colors.red),
          SizedBox(width: 6),
          Text(
            'September 17, 2020',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }

  Widget data(value, title) {
    return Column(children: [
      Text(value,
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
          )),
      Text(
        title,
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    ]);
  }

  Widget headerTheme(Widget body) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black54,
      ),
      child: body,
    );
  }

  Widget popUp() {
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        height: MediaQuery.of(context).size.height * 0.2,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Text(
            "September 27, 2020",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Present',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.green,
                ),
              ),
              Text(
                'Absent',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
        child: Column(
          children: [
            CircularPercentIndicator(
              radius: 120.0,
              backgroundColor: Colors.white,
              lineWidth: 13.0,
              animation: true,
              percent: 0.7,
              center: Text(
                "70%",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20.0),
              ),
              footer: Text(
                "Attendance",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20.0),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Colors.blueGrey,
            ),
            headerTheme(Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                data('20', 'Total'),
                data('16', 'Attended'),
                data('4', 'Missed')
              ],
            )),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => popUp());
              },
              child: headerTheme(Center(
                child: Text(
                  'MARK ATTENDANCE HERE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )),
            ),
            day(true),
            day(true),
            day(true),
            day(false),
            day(true),
            day(false),
            day(true),
            day(true),
            day(false),
          ],
        ),
      ),
    );
  }
}
