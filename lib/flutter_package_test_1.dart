library flutter_package_test_1;

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_package_test_1/model.dart';
import 'package:flutter_package_test_1/viewdata.dart';

// /// A Calculator.
// class Calculator {
//   /// Returns [value] plus 1.
//   int addOne(int value) => value + 1;
// }
//List<GraphModel> graphData = [];
// var graphData = [
//   ["07-02", "9", Colors.cyan],
//   ["08-02", "10", Colors.lightGreen],
//   ["09-02", "8", Colors.amber],
//   ["10-02", "9", Colors.blue],
//   ["11-02", "7", Colors.green],
//   ["12-02", "8", Colors.lime],
//   ["13-02", "7", Colors.orangeAccent],
//   ["14-02", "7", Colors.teal],
//   ["15-02", "9", Colors.lightBlueAccent],
//   ["16-02", "10", Colors.black38],
// ];

double largestValue = 0;

class BarGraph extends StatefulWidget {
  final List<GraphModel> graphData;
  double largestValue;

  BarGraph({super.key, required this.graphData, required this.largestValue});

  @override
  State<BarGraph> createState() => _BarGraphState();
}

class _BarGraphState extends State<BarGraph> {
  void getLargestValue() {
    for (var element in widget.graphData) {
      var val = double.parse(element.valueData.toString());
      if (val > largestValue) {
        setState(() {
          largestValue = val;
        });
      }
    }
  }

  // void getUpdate() {
  //   Timer.periodic(const Duration(seconds: 1), (timer) {
  //     int graphDataCount = 0;
  //     if (graphDataCount != widget.graphData.length) {
  //       getLargestValue();
  //       graphDataCount = widget.graphData.length;
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    largestValue = widget.largestValue;

    var size = MediaQuery.of(context).size;
    return Center(
        child: Container(
      padding: EdgeInsets.all(10),
      color: Colors.black,
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: size.height * 0.1,
              child: Text(
                "$largestValue",
                style: const TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
              child: Text(
                ((largestValue) * 0.8).toStringAsFixed(1),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
              child: Text(
                ((largestValue) * 0.6).toStringAsFixed(1),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
              child: Text(
                ((largestValue) * 0.4).toStringAsFixed(1),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
              child: Text(
                ((largestValue) * 0.2).toStringAsFixed(1),
                style: const TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
        Container(
          height: size.height * 0.6,
          width: size.width * 0.8,
          color: Colors.black,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: widget.graphData.map((e) {
              getLargestValue();
              // for (var element in widget.graphData) {
              //   //print((element[2]));
              //   var val = double.parse(element.valueData.toString());
              //   if (val > largestValue) {
              //     setState(() {
              //       largestValue = val;
              //     });
              //   }
              // }
              return Container(
                  height: ((0.6 * size.height)),
                  width: 40,
                  color: Colors.black,
                  child: ViewData(
                      dataDate: e.dateData.toString(),
                      dataValue: double.parse(e.valueData.toString()),
                      dataColor: e.colorData));
            }).toList(),
          ),
        ),
      ]),
    ));
  }
}