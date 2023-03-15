import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class abc extends StatefulWidget {
  const abc({super.key});

  @override
  State<abc> createState() => _abcState();
}

class _abcState extends State<abc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
