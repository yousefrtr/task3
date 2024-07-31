import 'package:flutter/material.dart';
import 'package:task3/responsive.dart';

Center BlackContainer2(BuildContext context) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20), topLeft: Radius.circular(20)),
          color: Colors.black,
        ),
        width: MediaQuery.of(context).size.width * .9,
        child: Wrap(children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Wrap(
              verticalDirection: VerticalDirection.up,
              children: [
                Container(
                  width: isSmallScreen(context)
                      ? MediaQuery.of(context).size.width * .8
                      : MediaQuery.of(context).size.width * .4,
                  child: Wrap(
                    children: [
                      Text(
                        "Ready to Grow Your ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: isSmallScreen(context) ? 30 : 50),
                      ),
                      Text(
                        "Business",
                        style: TextStyle(color: Colors.green, fontSize: 50),
                      ),
                      Text(
                        "?",
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: Text(
                          "Apply for Your Business Loan Today!",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "APPLAY Now",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.green),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4)))),
                          textStyle: MaterialStatePropertyAll(
                              TextStyle(color: Colors.white)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            "Contact Us 🡭",
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                isSmallScreen(context)
                    ? Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: Image.asset(
                            "images/girlSaloon.png",
                            fit: BoxFit.cover,
                          ),
                          width: 200,
                          alignment: Alignment.center,
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Container(
                          child: Image.asset("images/girlcooking.png"),
                          width: MediaQuery.of(context).size.width * .35,
                          alignment: Alignment.topRight,
                        ),
                      ),
              ],
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(1),
              margin: EdgeInsets.only(top: 1),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              width: MediaQuery.of(context).size.width * .8,
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * .8,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      isSmallScreen(context)
                          ? Container()
                          : Expanded(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Support@xenonbank.com",
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 25),
                                    ),
                                    Text(
                                      "Care@xenonbak.com",
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 25),
                                    ),
                                  ]),
                            ),
                      Expanded(
                        child: Row(
                          children: [
                            WhatsAppTele(context, "WhatsApp"),
                            WhatsAppTele(context, "Telegram"),
                            WhatsAppTele(context, "Twitter")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    ),
  );
}

Widget WhatsAppTele(BuildContext context, String Title) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Padding(
          padding: isSmallScreen(context)
              ? EdgeInsets.all(20.0)
              : EdgeInsets.all(40.0),
          child: Text(
            Title,
            style: TextStyle(color: Colors.white),
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.grey)),
      ),
    ),
  );
}
