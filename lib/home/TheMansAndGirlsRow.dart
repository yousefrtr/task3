import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:task3/responsive.dart';

Padding TheMansAndGirlsRow(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 40.0),
    child: Center(
      child: Container(
          width: MediaQuery.of(context).size.width * .9,
          child: Wrap(
            spacing: 20,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TheGirl1Coulmn(context),
              ),
              TheGirl2AndMan2Coulmn(context)
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          )),
    ),
  );
}

Padding TheGirl2AndMan2Coulmn(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Container(
      width: isLargeScreen(context)
          ? MediaQuery.of(context).size.width * .425
          : MediaQuery.of(context).size.width * .8,
      child: Wrap(
        verticalDirection: isLargeScreen(context)
            ? VerticalDirection.down
            : VerticalDirection.up,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Colors.grey, width: 1)),
            width: isLargeScreen(context)
                ? MediaQuery.of(context).size.width * .4
                : MediaQuery.of(context).size.width * .8,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Image.asset("images/GrayAndGirl.png",
                          width: isLargeScreen(context)
                              ? MediaQuery.of(context).size.width * .37
                              : MediaQuery.of(context).size.width * .8),
                    ),
                    Text(
                      "Quick Approval Process",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Get pre-approved for your business loan in as little as 24 hours.",
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: isLargeScreen(context) ? 20 : 15,
                          color: Colors.grey),
                    ),
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(color: Colors.grey, width: 1)),
              width: isLargeScreen(context)
                  ? MediaQuery.of(context).size.width * .4
                  : MediaQuery.of(context).size.width * .8,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Wrap(
                  verticalDirection: VerticalDirection.up,
                  children: [
                    Container(
                      width: isLargeScreen(context)
                          ? MediaQuery.of(context).size.width * .18
                          : MediaQuery.of(context).size.width * .8,
                      child: Column(
                        children: [
                          Text(
                            "Flexible Repayment Options",
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Choose a repayment plan that fits your budget, with flexible and affordable options to choose from.",
                            maxLines: 4,
                            style: TextStyle(
                                fontSize: isLargeScreen(context) ? 20 : 15,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        "images/man2.png",
                        fit: BoxFit.cover,
                        height: isLargeScreen(context)
                            ? MediaQuery.of(context).size.height * .3
                            : MediaQuery.of(context).size.height * .4,
                      ),
                      width: isLargeScreen(context)
                          ? MediaQuery.of(context).size.width * .16
                          : MediaQuery.of(context).size.width * .8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Column TheGirl1Coulmn(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: isLargeScreen(context)
            ? MediaQuery.of(context).size.width * .4
            : MediaQuery.of(context).size.width * .8,
        child: Wrap(
          children: [
            AutoSizeText(
              "Empower Your Business with  ",
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              maxLines: 1,
            ),
            AutoSizeText(
              "Our Cutting-Edge ",
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              maxLines: 1,
            ),
            AutoSizeText(
              "Features ",
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.green),
              maxLines: 2,
            ),
          ],
        ),
      ),
      Container(
        width: isLargeScreen(context)
            ? MediaQuery.of(context).size.width * .4
            : MediaQuery.of(context).size.width * .8,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Wrap(children: [
            Container(
              width: isLargeScreen(context)
                  ? MediaQuery.of(context).size.width * .2
                  : MediaQuery.of(context).size.width * .8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    "Expert Advice and Support ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    maxLines: 2,
                  ),
                  Text(
                    "Our dedicated team is here to help you every step of the way, with expert guidance and tailored advice.",
                    style: TextStyle(
                        fontSize: isLargeScreen(context) ? 15 : 8,
                        color: Colors.grey),
                    maxLines: 3,
                  ),
                ],
              ),
            ),
            Image.asset("images/girl2.png")
          ]),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xFFF7F9FC),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Wrap(spacing: 20, runSpacing: 20, children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                border: Border.all(width: 1, color: Colors.grey)),
            width: isLargeScreen(context)
                ? MediaQuery.of(context).size.width * .22
                : MediaQuery.of(context).size.width * .8,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Wide Range of Loan",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      maxLines: 2,
                    ),
                    Text(
                      "Products",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      maxLines: 2,
                    ),
                    Text(
                      "Choose from a variety of loan options, including short-term working capital and long-term investments.",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                      maxLines: 3,
                    ),
                  ]),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black,
            ),
            width: isLargeScreen(context)
                ? MediaQuery.of(context).size.width * .14
                : MediaQuery.of(context).size.width * .8,
            child: Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Privacity and",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        "security",
                        style: TextStyle(color: Colors.green, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Image.asset("images/bsmh.png")
              ],
            ),
          )
        ]),
      )
    ],
  );
}
