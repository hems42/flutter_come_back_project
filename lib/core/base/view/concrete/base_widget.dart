import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

class CoreBaseView<T extends Store> extends StatefulWidget {
  final Widget Function(BuildContext context, T value) onPageBuilder;
  final T viewModel;
  final Function(T model) onModelReady;
  final VoidCallback? onDispose;
  final VoidCallback? ondidUpdateWidget;

  const CoreBaseView(
      {Key? key,
      required this.viewModel,
      required this.onPageBuilder,
      required this.onModelReady,
      required this.ondidUpdateWidget,
      this.onDispose})
      : super(key: key);

  @override
  _CoreBaseViewState<T> createState() => _CoreBaseViewState<T>();
}

class _CoreBaseViewState<T extends Store> extends State<CoreBaseView<T>> {
  @override
  void didUpdateWidget(covariant CoreBaseView<T> oldWidget) {
    if (widget.ondidUpdateWidget != null) {
      widget.ondidUpdateWidget!.call();
    }
    super.didUpdateWidget(oldWidget);
  }

  late T model;
  @override
  void initState() {
    model = widget.viewModel;
    widget.onModelReady(model);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    if (widget.onDispose != null) widget.onDispose!();
  }

  @override
  Widget build(BuildContext context) {
    return widget.onPageBuilder(context, model);
  }
}
