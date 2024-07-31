import 'package:flutter/material.dart';
import 'package:task3/consts.dart';
import 'package:task3/responsive.dart';

class MarketplaceContainer extends StatelessWidget {
  const MarketplaceContainer(
      {super.key,
      required this.image,
      required this.Title,
      required this.StatmentUnderTitle});
  final String image;
  final String Title;
  final String StatmentUnderTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Container(
        width: isSmallScreen(context)
            ? MediaQuery.of(context).size.width * .8
            : MediaQuery.of(context).size.width * .28,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.white),
        child: Column(children: [
          Image.asset(image),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: isSmallScreen(context)
                  ? MediaQuery.of(context).size.width * .8
                  : MediaQuery.of(context).size.width * .2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: bgcolor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    child: Text(StatmentUnderTitle),
                    width: isSmallScreen(context)
                        ? MediaQuery.of(context).size.width * .8
                        : MediaQuery.of(context).size.width * .15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.green)),
                        onPressed: () {},
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
