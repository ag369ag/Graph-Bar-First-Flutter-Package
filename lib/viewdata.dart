import 'package:flutter/material.dart';
import 'package:bar_graph/flutter_package_test_1.dart';

class ViewData extends StatelessWidget {
  final String dataDate;
  final double dataValue;
  final Color dataColor;
  final Color textColors;
  const ViewData(
      {super.key,
      required this.dataDate,
      required this.dataValue,
      required this.dataColor,
      required this.textColors});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: ((graphSize) / largestValue) * dataValue,
              //((dataValue  / largestValue) * size.width)/1.5 ,
              //((size.width / largestValue) * dataValue)   ,
              //((dataValue  / largestValue) * size.width)/1.5 ,
              width: 30,
              color: dataColor,
            ),
            Text(
              dataDate,
              style: TextStyle(fontSize: 10, color: textColors),
            )
          ],
        ));
  }
}
