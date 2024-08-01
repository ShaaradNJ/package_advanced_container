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

A custom Flutter widget that provides advanced layout options including padding, margin, decoration, alignment, and relative sizing based on screen dimensions.

## Features
1) Automatic Size Adjustments: Eliminates the need for using MediaQuery in the parent widget, simplifying the code.
2) Responsive Sizing: Automatically adjusts the width and height of the container based on the screen size, using widthFactor and heightFactor.
3) Custom Padding and Margin: Easily apply padding and margin to the container with the padding and margin properties.
4) Decorations: Apply custom decorations such as background color, border, and border radius using the decoration property.
6) Alignment: Align the child widget within the container using the alignment property.
6) Flexible Child Widget: Supports any child widget, making it versatile for various use cases.

## Installation

```pubspec.yaml
dependencies:
  advanced_container:
    git:
      url: https://github.com/shaaradnj/advanced_container.git
      ref: main
```

```bash
flutter pub get
```
## Usage

```dart
import 'package:flutter/material.dart';
import 'package:advanced_container/advanced_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Advanced Container Example')),
        body: Center(
          child: AdvancedContainer(
            widthFactor: 0.5,
            heightFactor: 0.3,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            child: Text('Hello, World!', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}

```

## Contributing:
Contributions are welcome! If you find a bug or have a feature request, please open an issue or submit a pull request.
