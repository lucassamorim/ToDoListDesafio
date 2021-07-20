import 'package:flutter/material.dart';

import '../../gerencia_de_estado/gerencia_de_estado.dart';

class BuildWidget<T> extends StatefulWidget {
  final GerenciaDeEstado<T> controller;
  final Widget Function(BuildContext context, T state) builder;
  const BuildWidget({
    Key? key,
    required this.controller,
    required this.builder,
  }) : super(key: key);

  @override
  _BuildWidgetState createState() => _BuildWidgetState();
}

class _BuildWidgetState extends State<BuildWidget> {
  @override
  void initState() {
    widget.controller.listen((state) {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("Renderizou BuildWidget");
    return widget.builder(context, widget.controller.state);
  }
}
