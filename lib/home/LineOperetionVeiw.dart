import 'package:flutter/material.dart';
import 'package:task3/data.dart';

Padding StreamLineOperetionRow(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 20.0),
    child: Center(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        width: MediaQuery.of(context).size.width * .9,
        child: Column(
          children: [
            Text("Streamline Operations with Our Tools",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Wrap(
              children: [
                for (int i = 0; i < StreamLineOperetionList.length; i++)
                  StreamLineOperetionList[i],
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
