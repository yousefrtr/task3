import 'package:flutter/material.dart';
import 'package:task3/responsive.dart';

Center InsightsRow(BuildContext context) {
  return Center(
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      width: MediaQuery.of(context).size.width * .9,
      child: Wrap(children: [
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Container(
            width: MediaQuery.of(context).size.width * .8,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Wrap(
                      children: [
                        Text(
                          "Latest ",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "insights ",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                              decoration: isSmallScreen(context)
                                  ? null
                                  : TextDecoration.underline,
                              decorationColor: Colors.green),
                        ),
                        Text(
                          "from Xenon",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  isSmallScreen(context)
                      ? Container()
                      : TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white),
                              shape: MaterialStatePropertyAll(
                                  ContinuousRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: BorderSide(color: Colors.green)))),
                          onPressed: () {},
                          child: Text(
                            "View More",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ))
                ]),
          ),
        ),
        Container(
          width: isSmallScreen(context)
              ? MediaQuery.of(context).size.width * .8
              : MediaQuery.of(context).size.width * .4,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Wrap(children: [
              Image.asset("images/ManAndGirlTap.png"),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Container(
                  width: isSmallScreen(context)
                      ? MediaQuery.of(context).size.width * .8
                      : MediaQuery.of(context).size.width * .2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Teps",
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          ),
                          Text("JUNE 10, 2022")
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Text(
                          "5 accounting tips for small business owners",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                          "As a small business owner, you have a lot of priorities that demand your attention. Your finances aren't going to manage themselves, so it's important to make your accounting and bookkeeping as simple as possible."),
                      Padding(
                        padding: const EdgeInsets.only(top: 48.0),
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            "Read More 🡭",
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
        ImageAndTextForInsights(context, "images/ManAndGirlHands.png",
            "Average Small Business Revenue: What To Knoww", "ARTICLES"),
        ImageAndTextForInsights(
            context,
            "images/GirlAndCash.png",
            "Business Loan Terms: How to Pick the Right Financing Term",
            "RESOURCES"),
        isSmallScreen(context)
            ? SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        shape: MaterialStatePropertyAll(
                            ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(color: Colors.green)))),
                    onPressed: () {},
                    child: Text(
                      "View More",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    )),
              )
            : Container()
      ]),
    ),
  );
}

Widget ImageAndTextForInsights(BuildContext context, String image, String title,
    String ARTICLESOrRESOURCES) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Container(
      width: isSmallScreen(context)
          ? MediaQuery.of(context).size.width * .8
          : MediaQuery.of(context).size.width * .2,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Image.asset(image),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  ARTICLESOrRESOURCES,
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ),
            Text("JUNE 10, 2022")
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: InkWell(
            onTap: () {},
            child: Text(
              "Read More 🡭",
              style: TextStyle(color: Colors.green),
            ),
          ),
        )
      ]),
    ),
  );
}
