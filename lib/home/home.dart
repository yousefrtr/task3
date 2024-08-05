import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task3/consts.dart';

import 'package:task3/home/BlackContainer.dart';
import 'package:task3/home/BlackContainer2.dart';
import 'package:task3/home/ContainersImagAndText.dart';
import 'package:task3/home/FrequentlyQuestions.dart';
import 'package:task3/home/InsightsRow.dart';
import 'package:task3/home/IsoBlackContainer.dart';
import 'package:task3/home/LineOperetionVeiw.dart';
import 'package:task3/home/MarketPlacesRow.dart';

import 'package:task3/home/Qualify.dart';
import 'package:task3/home/QuickLinks.dart';
import 'package:task3/home/TextAndCards.dart';
import 'package:task3/home/TheMansAndGirlsRow.dart';
import 'package:task3/responsive.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isSmallScreen(context)
          ? AppBar(
              title: SvgPicture.asset("images/icons8-logo.svg"),
              backgroundColor: Colors.black,
            )
          : null,
      endDrawer: isSmallScreen(context) ? Drawer() : null,
      body: Container(
        color: bgcolor,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            BlackContainer(),
            TheTextOfFinancial(context),
            CardsRow(context),
            ContainersImagAndText(context),
            TheMansAndGirlsRow(context),
            IsoBlackContainer(context),
            QualifyRow(context),
            FrequentlyQuestions(context),
            InsightsRow(context),
            StreamLineOperetionRow(context),
            MarketPlacesRow(context),
            BlackContainer2(context),
            QuickLincksRow(context),
            Container(
              child: Wrap(
                children: [],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
