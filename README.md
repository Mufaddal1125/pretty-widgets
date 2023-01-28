# pretty_widgets

Pretty Widgets.

# Getting started with the Pretty Widgets

This package is designed to help reduce boilerplate code in your Flutter projects by providing a set of extensions that can be used to simplify common widget hierarchy.

## Installation

To install the package, add the following to your `pubspec.yaml`

```yaml
dependencies:   
    pretty_widgets: <latest version>
```

Then run `flutter pub get` to get the package installed.

## Usage

Once the package is installed, you can start using the extensions provided by importing the package in your dart

```dart
import 'package:pretty_widgets/pretty_widgets.dart';
```

The package includes extensions for common widgets like `Text`, `Padding`, that can be used to simplify the code and reduce the number of lines.

For example, you can use the `Text('Hii').center()` extension to simplify the code for centering a `Text` wich color widget:

```dart
// boilerplate
Center(
    child: Text('Hello world'),
)

// simpler
Text('Hello world').center()
```

Simpler right?
Well one line doesn't make much difference, now let's see what happens when you want to do much more styling.

```dart
// Long hierarchy and lots of boilerplate
const Padding(
    padding: EdgeInsets.all(16.0),
    child: Center(
        child: Text(
            'Hello World',
                style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
            ),
        ),
    ),
),

// Much cleaner way to write the same thing
const Text('Hello World').bold().size(24).center().paddingAll(16),
```

Much cleaner way to get things done!

## Conclusion

By using this package, you can significantly reduce the amount of boilerplate code in your Flutter projects, making your code more readable and maintainable. Try it out and see how it can help you simplify your code.
