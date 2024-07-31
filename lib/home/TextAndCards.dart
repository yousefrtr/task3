import 'package:flutter/material.dart';
import 'package:task3/responsive.dart';

Center TheTextOfFinancial(BuildContext context) {
  return Center(
    child: Column(
      children: [
        Wrap(
          children: [
            Text(
              "Financial ",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width / 18,
                  color: Colors.black),
            ),
            Card(
              child: Text(
                "🡭",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 25,
                    color: Colors.black),
              ),
              color: Colors.green,
            ),
            Text(
              "Freedom with",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width / 18,
                color: Colors.black,
              ),
              maxLines: 2,
            ),
            Text(
              "Xenon",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width / 18,
                  color: Colors.green,
                  decoration:
                      isSmallScreen(context) ? null : TextDecoration.underline,
                  decorationColor: Colors.green),
            ),
          ],
        ),
        Container(
          width: isSmallScreen(context)
              ? MediaQuery.of(context).size.width / 1.1
              : MediaQuery.of(context).size.width / 1.7,
          alignment: Alignment.center,
          child: Text(
            "Our offerings are tailored to meet the unique needs and challenges of each business, and are designed to provide the funding and support necessary to help businesses reach their full potential",
            maxLines: 5,
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    ),
  );
}

Padding CardsRow(BuildContext context) {
  return Padding(
    padding: EdgeInsetsDirectional.symmetric(vertical: 40),
    child: Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CardsInkWell(context, "Business Line of Credit", 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CardsInkWell(context, "Equipment Financing", 20),
            ),
            CardsInkWell(context, "Merchant Services", 23)
          ],
        ),
      ),
    ),
  );
}

InkWell CardsInkWell(BuildContext context, String Title, double FontSize) {
  return InkWell(
    onTap: () {},
    child: Container(
      width: isSmallScreen(context)
          ? MediaQuery.of(context).size.width * .45
          : MediaQuery.of(context).size.width * .3,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          Title,
          style: TextStyle(fontSize: FontSize),
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color.fromARGB(255, 255, 255, 255)),
    ),
  );
}
