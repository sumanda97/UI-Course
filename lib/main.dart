import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/widgets_option.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedPage = 0;
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: "F8F2EE".toColor(),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(32, 50, 32, 5),
          child: Column(
            children: [
              header(),
              SizedBox(
                height: 25,
              ),
              WidgetOption(
                selectedIndex: selectedPage,
                onTap: (index) {
                  setState(() {
                    selectedPage = index;
                  });
                },
              ),
              SizedBox(
                height: 45,
              ),
              selectedPage == 0 ? SizedBox() : checkOutButton(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget header() {
  return Column(
    children: [
      Center(
        child: Image(
          image: AssetImage("assets/illustration.png"),
          width: 290,
          height: 250,
        ),
      ),
      SizedBox(
        height: 50,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Upgrade to",
            style: GoogleFonts.poppins(color: Colors.black, fontSize: 30),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "PRO",
            style: GoogleFonts.poppins(color: Color(0xFFF3705A), fontSize: 30),
          ),
        ],
      ),
      SizedBox(
        height: 16,
      ),
      Text(
        "Go unlock all features and \nbuild your own business bigger",
        style: GoogleFonts.poppins(color: Colors.black87, fontSize: 16),
        textAlign: TextAlign.center,
      ),
    ],
  );
}

Widget checkOutButton() {
  return Expanded(
    child: Container(
      height: 47,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 25),
      margin: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFFF3705A),
      ),
      child: TextButton(
          onPressed: () {},
          child: Text(
            "Checkout Now",
            style: TextStyle(color: Colors.white),
          )),
    ),
  );
}
