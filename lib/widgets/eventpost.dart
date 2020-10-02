import 'package:flutter/material.dart';

class Eventpost extends StatelessWidget {
  final String title;
  final String image;
  final Function ontap;
  int tag;

  Eventpost({
    @required this.title,
    @required this.image,
    this.ontap,
    @required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: ontap,
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
                    //borderRadius: BorderRadius.circular(20)
                    ),
                padding: EdgeInsets.all(10),
                child: Align(
                  child: Hero(
                      tag: tag,
                      child: Image.asset(
                        image,
                      )),
                ),
              ),
              Text(title)
            ],
          ),
        ),
      ),
    );
  }
}
