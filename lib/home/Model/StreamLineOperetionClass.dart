import 'package:flutter/material.dart';
import 'package:task3/consts.dart';
import 'package:task3/responsive.dart';

class StreamLineOperetion extends StatelessWidget {
  const StreamLineOperetion(
      {super.key,
      required this.image,
      required this.title,
      required this.StatmentUndertitle,
      required this.Statment1,
      required this.Statment2,
      required this.Statment3});
  final String image;
  final String title;
  final String StatmentUndertitle;
  final String Statment1;
  final String Statment2;
  final String Statment3;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Container(
        width: isSmallScreen(context)
            ? MediaQuery.of(context).size.width * .8
            : MediaQuery.of(context).size.width * .37,
        decoration: BoxDecoration(
            color: bgcolor, borderRadius: BorderRadius.circular(25)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Image.asset(image),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                                fontSize: isSmallScreen(context) ? 25 : 35,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            StatmentUndertitle,
                            style: TextStyle(
                                fontSize: isSmallScreen(context) ? 15 : 20),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CheckStatmentRow(Statment1),
                  CheckStatmentRow(Statment2),
                  CheckStatmentRow(Statment3),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: isSmallScreen(context)
                          ? MediaQuery.of(context).size.width * .6
                          : MediaQuery.of(context).size.width * .1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(color: Colors.green)),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text("Learn More →"),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget CheckStatmentRow(Title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          Icon(
            Icons.check_circle,
            color: Colors.green,
          ),
          Expanded(child: Text(Title))
        ],
      ),
    );
  }
}
