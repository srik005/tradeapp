import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyAssets extends StatefulWidget {
  @override
  State<MyAssets> createState() => _MyAssetsState();
}

class _MyAssetsState extends State<MyAssets> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                offset: const Offset(0.0, 0.0),
                blurRadius: 1.0,
                spreadRadius: 0.0,
              )
            ],
          ),
          margin: EdgeInsets.only(left: 10, right: 10),
          width: double.infinity,
          height: 150,
          child: Stack(
            children: [
              Positioned(
                child: SvgPicture.asset("assets/images/crypto.svg"),
                top: 10,
                left: 20,
              ),
              Positioned(
                child: Text(
                  "Bitcoin",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                top: 15,
                left: 50,
              ),
              Positioned(
                child: Text(
                  "\$4500.00",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                top: 15,
                right: 30,
              ),
              Positioned(
                top: 40,
                left: 20,
                child: Row(
                  children: [
                    SvgPicture.asset("assets/images/redbar.svg"),
                    Text(
                      "4.5%",
                      style: TextStyle(color: Colors.red),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "\$12.5",
                      style: TextStyle(color: Color(0xffBAC2CC)),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Text(
                      "0.0000056 BTC",
                      style: TextStyle(color: Color(0xffBAC2CC)),
                    ),
                  ],
                ),
              ),
              Positioned(
                child: SvgPicture.asset(
                  "assets/images/tether.svg",
                  color: Color(0xff00A478),
                ),
                bottom: 15,
                left: 20,
              ),
              Positioned(
                  bottom: 17,
                  left: 50,
                  child: Text("Tether",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold))),
              Positioned(
                child: Text(
                  "\$2200.00",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                bottom: 15,
                right: 30,
              ),
            ],
          ),
        )
      ],
    );
  }
}
