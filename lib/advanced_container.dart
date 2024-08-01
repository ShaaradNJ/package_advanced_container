import 'package:flutter/material.dart';

class AdvancedContainer extends StatelessWidget {
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BoxDecoration? decoration;
  final AlignmentGeometry? alignment;
  final double? widthFactor;
  final double? heightFactor;

  const AdvancedContainer({
    Key? key,
    this.child,
    this.padding,
    this.margin,
    this.decoration,
    this.alignment,
    this.widthFactor,
    this.heightFactor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Calculate the width and height based on the factors provided
    double? calculatedWidth;
    if (widthFactor != null) {
      calculatedWidth = screenWidth * widthFactor!;
    } else {
      calculatedWidth = null;
    }

    double? calculatedHeight;
    if (heightFactor != null) {
      calculatedHeight = screenHeight * heightFactor!;
    } else {
      calculatedHeight = null;
    }

    // Start with the child widget or an empty box
    Widget current = child ?? const SizedBox.shrink();

    // Apply padding if provided
    if (padding != null) {
      current = Padding(
        padding: padding!,
        child: current,
      );
    }

    // Apply alignment if provided
    if (alignment != null) {
      current = Align(
        alignment: alignment!,
        child: current,
      );
    }

    // Apply decoration if provided
    if (decoration != null) {
      current = DecoratedBox(
        decoration: decoration!,
        child: current,
      );
    }

    // Apply calculated width and height using constraints
    if (calculatedWidth != null || calculatedHeight != null) {
      current = ConstrainedBox(
        constraints: BoxConstraints.tightFor(
          width: calculatedWidth,
          height: calculatedHeight,
        ),
        child: current,
      );
    }

    // Apply margin if provided
    if (margin != null) {
      current = Padding(
        padding: margin!,
        child: current,
      );
    }

    // Return the final widget
    return current;
  }
}
