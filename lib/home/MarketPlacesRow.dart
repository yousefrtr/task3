import 'package:flutter/material.dart';
import 'package:task3/data.dart';
import 'package:task3/responsive.dart';

Padding MarketPlacesRow(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 20.0),
    child: Center(
      child: Container(
        width: MediaQuery.of(context).size.width * .9,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      "Marketplace for Business Tools",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
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
                ],
              ),
            ),
            Wrap(
              children: [
                for (int i = 0; i < MarketplaceContainerList.length; i++)
                  MarketplaceContainerList[i],
              ],
            ),
            isSmallScreen(context)
                ? Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .8,
                      child: TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white),
                              shape: MaterialStatePropertyAll(
                                  ContinuousRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20)))),
                          onPressed: () {},
                          child: Text(
                            "Learn More",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          )),
                    ),
                  )
                : Container()
          ],
        ),
      ),
    ),
  );
}
