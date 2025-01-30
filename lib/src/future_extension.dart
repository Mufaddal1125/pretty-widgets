import 'package:flutter/material.dart';

extension FutureExtension<T> on Future<T?> {
  Widget builder({
    Key? key,
    required Widget Function(BuildContext context, T? data) builder,
    Widget? loading,
    Widget? error,
  }) {
    return _FutureWidget<T?>(
      key: key,
      future: this,
      loading: loading,
      error: error,
      builder: builder,
    );
  }
}

class _FutureWidget<T> extends StatefulWidget {
  const _FutureWidget({
    super.key,
    required this.future,
    this.loading,
    this.error,
    required this.builder,
  });
  final Future<T> future;
  final Widget? loading;
  final Widget? error;
  final Widget Function(BuildContext context, T? data) builder;
  @override
  State<_FutureWidget> createState() => _FutureWidgetState();
}

class _FutureWidgetState extends State<_FutureWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      key: widget.key,
      future: widget.future,
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return widget.loading ?? const SizedBox.shrink();
          case ConnectionState.active:
          case ConnectionState.done:
            if (snapshot.hasError) {
              return widget.loading ?? const SizedBox.shrink();
            }
            return widget.builder(context, snapshot.data);
        }
      },
    );
  }
}
