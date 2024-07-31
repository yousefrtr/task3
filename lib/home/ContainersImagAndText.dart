import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task3/responsive.dart';

Center ContainersImagAndText(BuildContext context) {
  return Center(
    child: Wrap(
      verticalDirection: VerticalDirection.up,
      runSpacing: 30,
      spacing: 30,
      children: [
        Container(
          width: isSmallScreen(context)
              ? MediaQuery.of(context).size.width * .8
              : MediaQuery.of(context).size.width * .45,
          height: MediaQuery.of(context).size.height * .6,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      "Business Line of Credit",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      maxLines: 1,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.symmetric(vertical: 20),
                      child: AutoSizeText(
                        "A flexible and convenient way to access funds for your business needs. Use it as you need it and only pay interest on what you borrow. Perfect for unexpected expenses",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                        maxLines: 4,
                      ),
                    ),
                    AutoSizeText(
                      "Benefits:",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      maxLines: 1,
                    ),
                    TheBenefits(
                        context,
                        "Easy access to funds as and when needed",
                        "images/agreement.svg"),
                    TheBenefits(
                      context,
                      "Flexible repayment options",
                      "images/calendar.svg",
                    ),
                    TheBenefits(context, "Interest only on funds borrowed",
                        "images/clock.svg"),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Aplay Now",
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
                    ),
                  ]),
            ),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40), color: Colors.white),
        ),
        Container(
          width: isSmallScreen(context)
              ? MediaQuery.of(context).size.width * .8
              : MediaQuery.of(context).size.width * .45,
          height: MediaQuery.of(context).size.height * .6,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(
              "images/man1.png",
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    ),
  );
}

Row TheBenefits(BuildContext context, String Title, String svgIcon) {
  return Row(
    children: [
      Expanded(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: SvgPicture.asset(
                svgIcon,
                height: 20,
                color: Colors.green,
              ),
            ),
            Text(
              Title,
              style: TextStyle(
                fontSize: isLargeScreen(context) ? 20 : 10,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
