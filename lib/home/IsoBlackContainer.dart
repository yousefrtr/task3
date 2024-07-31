import 'package:flutter/material.dart';
import 'package:task3/responsive.dart';

Padding IsoBlackContainer(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 20.0),
    child: Center(
      child: Container(
        width: MediaQuery.of(context).size.width * .9,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.black),
        child: Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: isSmallScreen(context)
                    ? MediaQuery.of(context).size.width * .6
                    : MediaQuery.of(context).size.width * .3,
                child: isSmallScreen(context)
                    ? Wrap(children: [
                        Image.asset("images/star.png"),
                        Column(
                          children: [
                            Text(
                              "Awards",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: isSmallScreen(context) ? 25 : 40,
                                  decoration: isSmallScreen(context)
                                      ? null
                                      : TextDecoration.underline,
                                  decorationColor: Colors.green),
                            ),
                            Text(
                              "& Recognition",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                fontSize: isSmallScreen(context) ? 25 : 40,
                              ),
                            ),
                          ],
                        ),
                      ])
                    : Wrap(children: [
                        Text(
                          "Awards",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: isSmallScreen(context) ? 25 : 40,
                              decoration: isSmallScreen(context)
                                  ? null
                                  : TextDecoration.underline,
                              decorationColor: Colors.green),
                        ),
                        Image.asset("images/star.png"),
                        Text(
                          "& Recognition",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontSize: isSmallScreen(context) ? 25 : 40,
                          ),
                        ),
                      ]),
              ),
            ),
            Container(
              width: isSmallScreen(context)
                  ? MediaQuery.of(context).size.width * .58
                  : MediaQuery.of(context).size.width * .5,
              child: Image.asset("images/Iso.png"),
            )
          ],
        ),
      ),
    ),
  );
}
