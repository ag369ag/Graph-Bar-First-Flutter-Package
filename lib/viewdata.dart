import 'package:flutter/material.dart';
//import 'package:flutter_package_test_1/flutter_package_test_1.dart';
import 'package:Simple_Bar_Graph/flutter_package_test_1.dart';

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
              height: ((size.height * 0.5) / largestValue) * dataValue,
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
