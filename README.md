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

<!--
TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.
-->

## Features

This bar graph is created to show simple data with customizable UI.

<!--
TODO: List what your package can do. Maybe include images, gifs, or videos.
-->

## Getting started

<!--
TODO: List prerequisites and provide or point to information on how to
start using the package.
-->
The size occupied by the graph is MediaQuery.of(context).size.height * 0.6

The bar graph requires four data.
    List<GraphModel>, double, Color, Color.

The array of GraphModel is used for plotting the data in graph bar.
    The GraphModel consist of three data.
        dateData 
            Doesn't necessary mean it only requires date. This is a string so the user can change what should be words under the value.
        valueData
            A double which will be shown in the bar graph.
        colorData
            To make the UI customizable, this is also required so the user can input what is the color of the data.

The double required is the largest value/data from the graph bar.

The first color is for background color and the second is for text color.

## Usage

<!--
TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

```dart
const like = 'sample';
```
-->
Sample for getting the largestData:

```
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

```
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

```
BarGraph
(
    graphData: graphModelList,
    largestValue: largestData,
    backgroundColor: Colors.black,
    textColor: Colors.white
)
```

<!-- 
## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
-->
