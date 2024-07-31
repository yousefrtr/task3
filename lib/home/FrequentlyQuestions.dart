import 'package:flutter/material.dart';
import 'package:task3/data.dart';
import 'package:task3/responsive.dart';

Widget FrequentlyQuestions(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: Center(
        child: Container(
      width: MediaQuery.of(context).size.width * .9,
      child: Wrap(children: [
        Container(
          width: MediaQuery.of(context).size.width * .8,
          alignment:
              isSmallScreen(context) ? Alignment.topLeft : Alignment.center,
          child: Wrap(
            children: [
              Text(
                "Frequently Asked ",
                style: TextStyle(fontSize: 35),
              ),
              Text(
                "Questions",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.green,
                    decoration: isSmallScreen(context)
                        ? null
                        : TextDecoration.underline,
                    decorationColor: Colors.green),
              ),
            ],
          ),
        ),
        Center(
          child: Container(
            width: isSmallScreen(context)
                ? MediaQuery.of(context).size.width * .8
                : MediaQuery.of(context).size.width * .6,
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < QuestionsTitlesList.length; i++)
                      QuestionsTitles(QuestionsTitlesList[i])
                  ],
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Container(
            width: isSmallScreen(context)
                ? MediaQuery.of(context).size.width * .8
                : MediaQuery.of(context).size.width * .4,
            child: Column(children: [
              TheMainQuetionsContainer(
                  context,
                  "What Is A Small Business Loan?",
                  "Small business loans are a category of loans and financial products a lender might provide to a small business."),
              for (int i = 0; i < SmallBusinessBrachList.length; i++)
                TheBranchQuetionContainer(context, SmallBusinessBrachList[i]),
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Container(
            width: isSmallScreen(context)
                ? MediaQuery.of(context).size.width * .8
                : MediaQuery.of(context).size.width * .4,
            child: Column(children: [
              TheMainQuetionsContainer(
                  context,
                  "Can I Get A Business Loan With Bad Credit?",
                  "It is possible to get certain types of business financing with a lower credit score. Some business cash advance lenders"),
              for (int i = 0; i < BadCreditBrachList.length; i++)
                TheBranchQuetionContainer(context, BadCreditBrachList[i]),
            ]),
          ),
        )
      ]),
    )),
  );
}

Widget TheBranchQuetionContainer(
  BuildContext context,
  String Title,
) {
  return Padding(
    padding: const EdgeInsets.only(top: 20.0),
    child: Container(
      width: isSmallScreen(context)
          ? MediaQuery.of(context).size.width * .8
          : MediaQuery.of(context).size.width * .3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: isSmallScreen(context)
                    ? MediaQuery.of(context).size.width * .6
                    : MediaQuery.of(context).size.width * .2,
                child: Text(
                  Title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                    shape: BoxShape.circle),
                child: Icon(
                  Icons.arrow_outward,
                  color: Colors.green,
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

Container TheMainQuetionsContainer(
    BuildContext context, String Title, String StatmentUnderTitle) {
  return Container(
    width: isSmallScreen(context)
        ? MediaQuery.of(context).size.width * .8
        : MediaQuery.of(context).size.width * .3,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), color: Colors.white),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: isSmallScreen(context)
                    ? MediaQuery.of(context).size.width * .6
                    : MediaQuery.of(context).size.width * .2,
                child: Text(
                  Title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              ClipOval(
                child: Container(
                  color: Colors.green,
                  child: Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
        Text(
          StatmentUnderTitle,
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ]),
    ),
  );
}

Widget QuestionsTitles(String Title) {
  return Padding(
    padding: const EdgeInsets.only(left: 30.0),
    child: InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.only(
              top: 10.0, left: 30.0, right: 30.0, bottom: 10.0),
          child: Text(
            Title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ),
  );
}
