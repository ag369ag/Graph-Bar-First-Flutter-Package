library flutter_package_test_1;

import 'package:bar_graph/model.dart';
import 'package:bar_graph/viewdata.dart';
import 'package:flutter/material.dart';

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
double graphSize = 0;

class BarGraph extends StatefulWidget {
  final List<GraphModel> graphData;
  late double largestValue;
  final Color backgroundColor;
  final Color textColor;
  final double graphHeight;

  BarGraph(
      {super.key,
      required this.graphData,
      required this.largestValue,
      required this.backgroundColor,
      required this.textColor,
      required this.graphHeight});

  @override
  State<BarGraph> createState() => _BarGraphState();
}

class _BarGraphState extends State<BarGraph> {
  // void getLargestValue() {
  //   for (var element in widget.graphData) {
  //     var val = element.valueData;
  //     if (val > largestValue) {
  //       setState(() {
  //         largestValue = val;
  //       });
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    largestValue = widget.largestValue;
    graphSize = widget.graphHeight;
    var size = MediaQuery.of(context).size;
    return Center(
        child: Container(
      padding: const EdgeInsets.all(10),
      color: widget.backgroundColor,
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: widget.graphHeight / 5,
              child: Text(
                "$largestValue",
                style: TextStyle(color: widget.textColor),
              ),
            ),
            SizedBox(
              height: widget.graphHeight / 5,
              child: Text(
                ((largestValue) * 0.8).toStringAsFixed(1),
                style: TextStyle(color: widget.textColor),
              ),
            ),
            SizedBox(
              height: widget.graphHeight / 5,
              child: Text(
                ((largestValue) * 0.6).toStringAsFixed(1),
                style: TextStyle(color: widget.textColor),
              ),
            ),
            SizedBox(
              height: widget.graphHeight / 5,
              child: Text(
                ((largestValue) * 0.4).toStringAsFixed(1),
                style: TextStyle(color: widget.textColor),
              ),
            ),
            SizedBox(
              height: widget.graphHeight / 5,
              child: Text(
                ((largestValue) * 0.2).toStringAsFixed(1),
                style: TextStyle(color: widget.textColor),
              ),
            )
          ],
        ),
        Container(
          height: widget.graphHeight,
          width: size.width * 0.8,
          color: widget.backgroundColor,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: widget.graphData.map((e) {
              //getLargestValue();
              return Container(
                  height: (widget.graphHeight),
                  width: 40,
                  color: widget.backgroundColor,
                  child: ViewData(
                      dataDate: e.dateData.toString(),
                      dataValue: e.valueData,
                      dataColor: e.colorData,
                      textColors: widget.textColor));
            }).toList(),
          ),
        ),
      ]),
    ));
  }
}
