import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tradeapp/mywallet.dart';
import 'package:tradeapp/recommend.dart';
import 'package:tradeapp/myassets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:Icon(Icons.pentagon,color: Colors.blue,),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
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
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height / 15),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SvgPicture.asset("assets/images/profile.svg"),
                ),
                const Spacer(),
                SvgPicture.asset("assets/images/settings.svg"),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: SvgPicture.asset("assets/images/notif.svg"),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            MyWallet("My Wallet",Color(0xff177DFF)),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffE8F2FF),
                        borderRadius: BorderRadius.circular(10)),
                    width: MediaQuery.of(context).size.width * 1,
                    height: MediaQuery.of(context).size.height / 11,
                  ),
                  Positioned(
                    bottom: 20,
                    left: 15,
                    child: SvgPicture.asset("assets/images/crypto.svg"),
                  ),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: SvgPicture.asset("assets/images/topimg.svg")),
                  Positioned(
                      bottom: 25,
                      left: 45,
                      child: Text(
                        "BTC",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      )),
                  Positioned(
                    bottom: 25,
                    right: 10,
                    child: Row(
                      children: [
                        Text(
                          "0.00000045",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff39A798)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SvgPicture.asset("assets/images/arrow.svg"),
                        SizedBox(
                          width: 5,
                        ),
                        Text("3.8%",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff39A798)))
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: SvgPicture.asset("assets/images/group4.svg"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Recommended",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            Recommend(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "My Assets",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            MyAssets(),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
