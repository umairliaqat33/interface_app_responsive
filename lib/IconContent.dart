import 'package:flutter/material.dart';
// import 'main.dart';

class IconContent extends StatelessWidget {
  IconContent(this.tex2, this.tex1, this.mess2, this.mess1, this.ic2, this.ic1,this.h,this.w);
  final IconData ic1;
  final IconData ic2;
  String mess1;
  String mess2;
  String tex1;
  String tex2;
  final double h;
  final double w;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: h/3.3,
          width: w/2.5,
          child: TextButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
            child: Column(
              children: [
                Icon(
                  ic1,
                  color: Colors.black,
                  size: 50,
                ),
                Text(
                  mess1,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  tex1,
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: h/3.3,
          width: w/2.5,
          child: TextButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
            child: Column(
              children: [
                Icon(
                  ic2,
                  color: Colors.black,
                  size: 50,
                ),
                Text(
                  mess2,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  tex2,
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
