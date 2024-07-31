import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task3/data.dart';
import 'package:task3/responsive.dart';

Widget QuickLincksRow(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 20.0),
    child: Center(
      child: Container(
        width: MediaQuery.of(context).size.width * .9,
        child: Wrap(
          children: [
            Container(
              width: isSmallScreen(context)
                  ? MediaQuery.of(context).size.width * .8
                  : MediaQuery.of(context).size.width * .2,
              child: Wrap(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset("images/icons8-logo.svg"),
                      Text(
                        "Xenon",
                        style: TextStyle(color: Colors.green, fontSize: 30),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: Text(
                      "Xenon is specializes in providing business loans to small and medium-sized businesses in their local area.",
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Container(
                      width: isSmallScreen(context)
                          ? MediaQuery.of(context).size.width * .9
                          : MediaQuery.of(context).size.width * .2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Icon(
                            Icons.email,
                            color: Colors.green,
                          ),
                          Expanded(
                            child: Text(
                              "Support@xenonbank.com",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: isSmallScreen(context)
                        ? MediaQuery.of(context).size.width * .9
                        : MediaQuery.of(context).size.width * .2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.green,
                        ),
                        Expanded(
                          child: Text(
                            "+91 1234567890",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            QuickLinksFullContaner(context, "Company", quickLinksCompany),
            QuickLinksFullContaner(context, "Explore", quickLinksexplore),
            QuickLinksFullContaner(context, "Quick Links", quickLinksquickLinks)
          ],
        ),
      ),
    ),
  );
}

Widget QuickLinksFullContaner(
  BuildContext context,
  String Title,
  List quicklinks,
) {
  return Padding(
    padding: const EdgeInsets.only(left: 20.0),
    child: Container(
      width: isSmallScreen(context)
          ? MediaQuery.of(context).size.width * .9
          : MediaQuery.of(context).size.width * .2,
      child: Wrap(crossAxisAlignment: WrapCrossAlignment.start, children: [
        Container(
          width: isSmallScreen(context)
              ? MediaQuery.of(context).size.width * .9
              : MediaQuery.of(context).size.width * .2,
          child: Text(
            Title,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        for (int i = 0; i < quicklinks.length; i++)
          QuickLinks(context, quicklinks[i])
      ]),
    ),
  );
}

Widget QuickLinks(BuildContext context, String Title) {
  return Padding(
    padding: const EdgeInsets.only(top: 10.0),
    child: Container(
      width: isSmallScreen(context)
          ? MediaQuery.of(context).size.width * .4
          : MediaQuery.of(context).size.width * .2,
      child: InkWell(
          onTap: () {},
          child: Text(
            Title,
            style: TextStyle(
              color: Colors.grey,
            ),
            textAlign: TextAlign.start,
          )),
    ),
  );
}
