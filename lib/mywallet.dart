import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'WalletScreen.dart';

class MyWallet extends StatefulWidget {
  final String text;
  final Color color;
  MyWallet(this.text, this.color);

  @override
  State<MyWallet> createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WalletScreen()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color:widget.color,
              borderRadius: BorderRadius.circular(20)),
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height / 4,
          child: Stack(
            children: [
              Positioned(
                right: 10,
                top: 10,
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: DropdownButton<String>(
                    hint: Text("USD",style: TextStyle(color: Colors.white),),
                    items: <String>['\$', '\$', '\$', '\$'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
               Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  widget.text,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const Center(
                child: Text(
                  "\$8,540.00",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Align(
                child: SvgPicture.asset("assets/images/group.svg"),
                alignment: Alignment.bottomLeft,
              ),
              Positioned(
                bottom: 5,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue),
                        child: Wrap(
                          children: [
                            SvgPicture.asset("assets/images/moneysend.svg"),
                            const Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Text(
                                "Transfer",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue),
                      child: Wrap(
                        children: [
                          SvgPicture.asset("assets/images/moneyrecieve.svg"),
                          const Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text(
                              "Deposit",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        alignment: Alignment.center,
                        width: 80,
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue),
                        child: Wrap(
                          children: [
                            SvgPicture.asset(
                                "assets/images/bitcoin-convert.svg"),
                            const Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Text(
                                "Swap",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
