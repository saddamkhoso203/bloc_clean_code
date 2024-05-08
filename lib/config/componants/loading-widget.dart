// ignore_for_file: use_super_parameters

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class LoadinWidget extends StatefulWidget {
  final double size;
  const LoadinWidget({super.key, this.size = 30});

  @override
  State<LoadinWidget> createState() => _LoadinWidgetState();
}

class _LoadinWidgetState extends State<LoadinWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size,
      width: widget.size,
      child: Platform.isAndroid
          ? const CircularProgressIndicator(
              color: Colors.blue,
            )
          : const CupertinoActivityIndicator(
              color: Colors.blue,
            ),
    );
  }
}
