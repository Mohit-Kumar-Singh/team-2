import 'package:flutter/material.dart';

class PopUp extends StatelessWidget {
  Widget child;
  String title;
  PopUp({@required this.child, @required this.title});
  @override
  Widget build(BuildContext context) {
    Widget popUp() {
      return AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        //content: Text(data),
        title: child,
      );
      // return Dialog(
      //   child: Container(
      //     padding: EdgeInsets.all(10),
      //     height: MediaQuery.of(context).size.height * 0.2,
      //     child: child,
      //   ),
      // );
    }

    return GestureDetector(
      onTap: () {
        showDialog(
            context: context, builder: (BuildContext context) => popUp());
      },
      child: Container(
          width: 150,
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Text('$title')),
    );
  }
}
