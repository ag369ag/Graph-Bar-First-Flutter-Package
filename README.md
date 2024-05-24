<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

<!-- START OF NOTE 
This package is created using flutter 3.7.2 with dart 2.19.2
The size occupied by the graph is MediaQuery.of(context).size.height * 0.6
The bar graph requires two data.
    - List<GraphModel>, double, Color, Color.
The array of GraphModel is used for plotting the data in graph bar.
The double required is the largest value/data from the graph bar.
The first color is for background color and the second is for text color.




 END OF NOTE -->



## Features

This bar graph is created to show simple data with customizable UI.



## Getting started

1. The size occupied by the graph is 
Before:
```dart
MediaQuery.of(context).size.height * 0.6
```
Now:
Height of the bar graph will based on the user's input.

2. The bar graph requires four data.
```dart
List<GraphModel>, double, Color, Color, double.dart pu
```

3. The array of GraphModel is used for plotting the data in graph bar.

4. The GraphModel consist of three data.

I. dateData 

i. Doesn't necessary mean it only requires date. This is a string so the user can change what should be words under the value.

II. valueData

i. double which will be shown in the bar graph.

III. colorData

i. To make the UI customizable, this is also required so the user can input what is the color of the data.

5. The double required is the largest value/data from the graph bar.

6. The first color is for background color and the second is for text color.

## Usage

Sample for getting the largestData:
```dart
double largestData = 0;
for(var item in graphModelList)
{
    var itemValue = item.valueData;
    if(itemValue > largestData)
    {
        setState((){
            largestData = itemValue;
        });
    }
}
```

Sample for list of GraphModel:
```dart
List<GraphModel> graphModelList = [];
 graphModelList.add
 (
    GraphModel
    (
        dateData: "07-02",
        valueData: 9,
        colorData: Colors.cyan
    )
 );
```

Sample for BarGraph:
```dart
BarGraph
(
    graphData: graphModelList,
    largestValue: largestData,
    backgroundColor: Colors.black,
    textColor: Colors.white,
    graphHeight: 300.0
)
```
