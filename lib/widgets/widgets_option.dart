import 'package:flutter/material.dart';

class WidgetOption extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;
  WidgetOption({this.selectedIndex = 0, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            if (onTap != null) {
              onTap(1);
            }
          },
          child: Container(
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color:
                    selectedIndex == 1 ? Color(0xFFF3705A) : Color(0xFF3C3A36),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    selectedIndex == 1
                        ? Image.asset(
                            "assets/check_two.png",
                            height: 18,
                            width: 18,
                          )
                        : Image.asset(
                            "assets/check.png",
                            height: 18,
                            width: 18,
                          ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Monthly",
                          style: TextStyle(color: Colors.black54),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Good For Starting up",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "\$20",
                      style: TextStyle(fontSize: 20, color: Colors.black54),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            if (onTap != null) {
              onTap(2);
            }
          },
          child: Container(
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color:
                    selectedIndex == 2 ? Color(0xFFF3705A) : Color(0xFF3C3A36),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    selectedIndex == 2
                        ? Image.asset(
                            "assets/check_two.png",
                            height: 18,
                            width: 18,
                          )
                        : Image.asset(
                            "assets/check.png",
                            height: 18,
                            width: 18,
                          ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Quarterly",
                          style: TextStyle(color: Colors.black54),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Focusing on building",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "\$35",
                      style: TextStyle(fontSize: 20, color: Colors.black54),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            if (onTap != null) {
              onTap(3);
            }
          },
          child: Container(
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color:
                    selectedIndex == 3 ? Color(0xFFF3705A) : Color(0xFF3C3A36),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    selectedIndex == 3
                        ? Image.asset(
                            "assets/check_two.png",
                            height: 18,
                            width: 18,
                          )
                        : Image.asset(
                            "assets/check.png",
                            height: 18,
                            width: 18,
                          ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Yearly",
                          style: TextStyle(color: Colors.black54),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Steady in company",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "\$50",
                      style: TextStyle(fontSize: 20, color: Colors.black54),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
