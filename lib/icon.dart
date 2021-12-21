import 'package:flutter/material.dart';


class IconContent extends StatelessWidget {
  IconContent(this.tex2, this.tex1, this.mess2, this.mess1, this.ic2, this.ic1,this.ht,this.wd);
  final IconData ic1;
  final IconData ic2;
  String mess1;
  String mess2;
  String tex1;
  String tex2;
  final double wd;
  final double ht;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,

      children: [
        SizedBox(
        width: wd/3,
        height: ht/7,

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
                  size: ht/20,
                ),
                Text(
                  mess1,
                  style: TextStyle(color: Colors.white, fontSize: ht/40),
                ),
                Text(
                  tex1,
                  style: TextStyle(color: Colors.white, fontSize: ht/70),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: wd/3,
          height: ht/7,
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
                  size: ht/20,
                ),
                Text(
                  mess2,
                  style: TextStyle(color: Colors.white, fontSize: ht/40 ),
                ),
                Text(
                  tex2,
                  style: TextStyle(color: Colors.white, fontSize: ht/70),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
