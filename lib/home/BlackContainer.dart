import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task3/responsive.dart';

class BlackContainer extends StatefulWidget {
  const BlackContainer({super.key});

  @override
  State<BlackContainer> createState() => _BlackContainerState();
}

class _BlackContainerState extends State<BlackContainer> {
  List<bool> _isselcted = [true, false, false, false, false, false];
  String DropDownValue = "more";
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 0, 0, 0),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(100),
          )),
      child: Padding(
        padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width / 19,
            right: MediaQuery.of(context).size.width / 19),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          isSmallScreen(context) ? Container() : HeaderLarge(),
          TheTextRow(context),
          TextAndImagesWrap(context),
        ]),
      ),
    );
  }

  Row HeaderLarge() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset("images/icons8-logo.svg"),
        ToggleButtons(
          borderColor: Colors.black,
          fillColor: Colors.black,
          focusColor: Colors.black,
          highlightColor: Colors.black,
          hoverColor: Colors.black,
          children: [
            ToggleButtonsContainer("HOME", _isselcted[0]),
            ToggleButtonsContainer("PRODUCTS", _isselcted[1]),
            ToggleButtonsContainer("FEATURES", _isselcted[2]),
            ToggleButtonsContainer("HOW TO APPLY", _isselcted[3]),
            ToggleButtonsContainer("TOOLS", _isselcted[4]),
            DropdownButton(
              hint: Text("More", style: TextStyle(color: Colors.white)),
              items: [
                DropdownMenuItem(
                  value: "more",
                  child: Text(
                    "MORE",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 90),
                  ),
                ),
                DropdownMenuItem(
                  value: "2024",
                  child: Text(
                    "2024",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 90),
                  ),
                ),
                DropdownMenuItem(
                  value: "2",
                  child: Text(
                    "2023",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 90),
                  ),
                ),
                DropdownMenuItem(
                  value: "3",
                  child: Text(
                    "2022",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 90),
                  ),
                ),
              ],
              value: DropDownValue,
              onChanged: (String? newvalue) {
                setState(() {
                  DropDownValue = newvalue!;
                });
              },
              style: TextStyle(color: Colors.white),
              dropdownColor: Colors.blue,
              underline: Align(alignment: Alignment.bottomCenter),
            ),
          ],
          isSelected: _isselcted,
          onPressed: (index) {
            setState(() {
              for (int i = 0; i < _isselcted.length; i++) {
                _isselcted[i] = i == index;
              }
            });
          },
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            "APPLAY Now",
            style: TextStyle(color: Colors.black),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.green),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)))),
            textStyle: MaterialStatePropertyAll(TextStyle(color: Colors.white)),
          ),
        ),
      ],
    );
  }

  Widget ToggleButtonsContainer(Title, isSelected) {
    return Container(
      padding: EdgeInsets.only(right: 20.0),
      child: Text(Title,
          style: TextStyle(
            color: isSelected
                ? Colors.blue
                : const Color.fromARGB(255, 255, 255, 255),
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            fontSize: MediaQuery.of(context).size.width / 90,
          )),
    );
  }

  Wrap TheTextRow(BuildContext context) {
    return Wrap(
      children: [
        Text(
          "Unlock Your ",
          style: TextStyle(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.width / 15),
        ),
        Text(
          "Business ",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.width / 15),
        ),
        isLargeScreen(context)
            ? SvgPicture.asset(
                "images/icons8-logo.svg",
                height: MediaQuery.of(context).size.width / 15,
              )
            : Container(),
        Text(
          " Potential with Xenon Bank",
          style: TextStyle(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.width / 15),
        ),
      ],
    );
  }

  Wrap TextAndImagesWrap(BuildContext context) {
    return Wrap(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: isLargeScreen(context)
                  ? 5 * MediaQuery.of(context).size.width / 19
                  : 6 * MediaQuery.of(context).size.width / 7,
              child: Text(
                "Achieve business success with Xenon Bank. Our comprehensive financial solutions help unlock your business potential and take your vision to the next level.",
                style: TextStyle(fontSize: 19, color: Colors.grey),
                maxLines: 7,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 50),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Aplay Now",
                  style: TextStyle(color: Colors.black),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)))),
                ),
              ),
            ),
            isLargeScreen(context)
                ? Image.asset("images/logo2.png")
                : Container()
          ],
        ),
        Wrap(
          verticalDirection: VerticalDirection.up,
          children: [
            Image.asset(
              "images/girl.png",
              height: isLargeScreen(context)
                  ? MediaQuery.of(context).size.width * .3
                  : MediaQuery.of(context).size.width * .6,
            ),
            TheLineText()
          ],
        ),
      ],
    );
  }

  Container TheLineText() {
    return Container(
      width: 417,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  Container(
                    height: 300,
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 40.0,
                        ),
                        child:
                            Icon(Icons.circle, size: 18, color: Colors.green),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 60.0,
                        ),
                        child:
                            Icon(Icons.circle, size: 18, color: Colors.green),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 60.0,
                        ),
                        child:
                            Icon(Icons.circle, size: 18, color: Colors.green),
                      ),
                    ]),
                  ),
                  Container(
                    width: 100,
                    height: 300,
                    decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: Colors.grey,
                          ),
                          right: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.elliptical(10, 5))),
                  ),
                ],
              ),
              Container(
                height: 50,
                width: 80,
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 200,
                    height: 300,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 30.0, left: 20.0),
                            child: Text(
                              "Fast, easy loan application",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 20.0, left: 20.0),
                            child: Text(
                              "Flexible repayment options",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 20.0, left: 20.0),
                            child: Text(
                              "Competitive interest rates",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
              Container(
                width: 90,
                height: 70,
                decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.grey),
                      right: BorderSide(color: Colors.grey),
                    ),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(2))),
              ),
              Container(
                width: 200,
                height: 70,
                decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                    color: Colors.white,
                  )),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    children: [
                      Image.asset("images/3Acounts.png"),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "12M",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Active Users",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
