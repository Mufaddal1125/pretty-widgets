import 'package:flutter/material.dart';

extension FutureExtension<T> on Future<T?> {
  FutureBuilder<T?> builder({
    Key? key,
    required Widget Function(BuildContext context, T? data) builder,
    Widget? loading,
    Widget? error,
  }) {
    return FutureBuilder<T?>(
      key: key,
      future: this,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return builder(context, snapshot.data);
        } else if (snapshot.hasError) {
          return error ?? const SizedBox.shrink();
        } else {
          return loading ?? const SizedBox.shrink();
        }
      },
    );
  }
}
