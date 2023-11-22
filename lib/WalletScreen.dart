import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tradeapp/mywallet.dart';

class WalletScreen extends StatefulWidget {
  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pentagon,
              color: Colors.grey,
            ),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet, color: Colors.blue),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.outbond_outlined),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.outbound_outlined),
            label: 'Chats',
          ),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: SafeArea(
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                child: Text(
                  "My Wallet",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.black),
                ),
                alignment: Alignment.topLeft,
              ),
            ),
            MyWallet("", Color(0xff07264D)),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    child: Text(
                      "Transaction History",
                      style: TextStyle(fontSize: 16,color: Colors.black),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                SvgPicture.asset("assets/images/settings.svg"),
                SvgPicture.asset("assets/images/profile4.svg")
              ],
            ),
            SizedBox(height: 40,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset("assets/images/uparrow.svg")
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Janet Doe",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 170,
                ),
                Text(
                  "\$4500.00",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                child: Row(
                  children: [
                    Text("BTCBNB"),
                    SizedBox(
                      width: 186,
                    ),
                    Text("0.0000056BTC"),
                  ],
                ),
                alignment: Alignment.topLeft,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [SvgPicture.asset("assets/images/down.svg")],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Janet Doe",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 170,
                ),
                Text(
                  "\$2500.00",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                child: Row(
                  children: [
                    Text("BTCBNB"),
                    SizedBox(
                      width: 186,
                    ),
                    Text("0.0000046BTC"),
                  ],
                ),
                alignment: Alignment.topLeft,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [SvgPicture.asset("assets/images/down.svg")],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Janet Doe",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 170,
                ),
                Text(
                  "\$4500.00",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                child: Row(
                  children: [
                    Text("BTCBNB"),
                    SizedBox(
                      width: 186,
                    ),
                    Text("0.0000046BTC"),
                  ],
                ),
                alignment: Alignment.topLeft,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset("assets/images/uparrow.svg")
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Janet Doe",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 170,
                ),
                Text(
                  "\$4500.00",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                child: Row(
                  children: [
                    Text("BTCBNB"),
                    SizedBox(
                      width: 186,
                    ),
                    Text("0.0000056BTC"),
                  ],
                ),
                alignment: Alignment.topLeft,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
