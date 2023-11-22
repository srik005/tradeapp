import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Recommend extends StatefulWidget {
  @override
  State<Recommend> createState() => _MyRecommendState();
}

class _MyRecommendState extends State<Recommend> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  offset: const Offset(0.0, 0.0),
                  blurRadius: 3.0,
                  spreadRadius: 0.0,
                )
              ], borderRadius: BorderRadius.circular(10), color: Colors.white),
              width: 170,
              height: 100,
              child: Stack(
                children: [
                  Positioned(
                    child: SvgPicture.asset("assets/images/crypto.svg"),
                    top: 10,
                    left: 10,
                  ),
                  Positioned(
                    child: Text("BNB",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                    top: 15,
                    left: 45,
                  ),
                  Positioned(
                    child: SvgPicture.asset("assets/images/recimg.svg"),
                    top: 10,
                    right: 10,
                  ),
                  Positioned(
                    child: Text(
                      "+1.37",
                      style: TextStyle(color: Color(0xff5D6166)),
                    ),
                    bottom: 10,
                    left: 10,
                  ),
                  Positioned(
                    child: Text("215.3",
                        style: TextStyle(color: Color(0xff5D6166))),
                    bottom: 10,
                    right: 10,
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  offset: const Offset(0.0, 0.0),
                  blurRadius: 3.0,
                  spreadRadius: 0.0,
                ),
              ], borderRadius: BorderRadius.circular(10), color: Colors.white),
              width: 170,
              height: 100,
              child: Stack(
                children: [
                  Positioned(
                    child: SvgPicture.asset("assets/images/crypto.svg"),
                    top: 10,
                    left: 10,
                  ),
                  Positioned(
                    child: Text("ADL",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                    top: 15,
                    left: 45,
                  ),
                  Positioned(
                    child: SvgPicture.asset("assets/images/recimg.svg"),
                    top: 10,
                    right: 10,
                  ),
                  Positioned(
                    child: Text("+1.37",
                        style: TextStyle(color: Color(0xff5D6166))),
                    bottom: 10,
                    left: 10,
                  ),
                  Positioned(
                    child: Text("215.3",
                        style: TextStyle(color: Color(0xff5D6166))),
                    bottom: 10,
                    right: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
