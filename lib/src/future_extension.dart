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
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return loading ?? const SizedBox.shrink();
          case ConnectionState.active:
          case ConnectionState.done:
            if (snapshot.hasError) {
              return error ?? const SizedBox.shrink();
            }
            return builder(context, snapshot.data);
        }
      },
    );
  }
}
