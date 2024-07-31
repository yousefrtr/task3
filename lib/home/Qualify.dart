import 'package:flutter/material.dart';
import 'package:task3/consts.dart';
import 'package:task3/data.dart';
import 'package:task3/responsive.dart';

Padding QualifyRow(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 20.0),
    child: Center(
      child: Container(
        width: MediaQuery.of(context).size.width * .9,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.white),
        child: Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Container(
                width: isSmallScreen(context)
                    ? MediaQuery.of(context).size.width * .8
                    : MediaQuery.of(context).size.width * .3,
                child: Row(
                  children: [
                    Text(
                      "Do I ",
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      "Qualify?",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 40,
                          decoration: isSmallScreen(context)
                              ? null
                              : TextDecoration.underline,
                          decorationColor: Colors.green),
                    )
                  ],
                ),
              ),
            ),
            for (int i = 0; i < QuantfyContainers.length; i++)
              QualifyContainer(context, QuantfyContainers[i]),
            SizedBox(
              width: isSmallScreen(context)
                  ? MediaQuery.of(context).size.width * .8
                  : MediaQuery.of(context).size.width * .15,
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
                  textStyle:
                      MaterialStatePropertyAll(TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

QualifyContainer(BuildContext context, String title) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Container(
      width: isSmallScreen(context)
          ? MediaQuery.of(context).size.width * .8
          : MediaQuery.of(context).size.width * .2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: bgcolor),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Icon(
            Icons.check_circle,
            color: Colors.green,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .18,
              child: Text(
                title,
                style: TextStyle(fontSize: 30),
                maxLines: 2,
              ),
            ),
          ),
        )
      ]),
    ),
  );
}
