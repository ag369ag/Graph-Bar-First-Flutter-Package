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

<!-- START OF NOTE -->
This package is created using flutter 3.7.2 with dart 2.19.2
The size occupied by the graph is MediaQuery.of(context).size.height * 0.6
The bar graph requires two data.
    - List<GraphModel>, double, Color, Color.
The array of GraphModel is used for plotting the data in graph bar.
The double required is the largest value/data from the graph bar.
The first color is for background color and the second is for text color.

Sample for list of GraphModel:
List<GraphModel> graphModelList = [];
 graphModelList.add
 (
    GraphModel
    (
        dateData: "07-02",
        valueData: randomValue,
        colorData: Colors.cyan
    )
 );


<!-- END OF NOTE -->
TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

```dart
const like = 'sample';
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
