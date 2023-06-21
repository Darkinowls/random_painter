import 'dart:async';

import 'package:flutter/material.dart';
import 'package:random_painter/random_figure.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'app',
          home: PeriodicalRepaint()
    );
  }
}

class PeriodicalRepaint extends StatefulWidget {
  const PeriodicalRepaint({Key? key}) : super(key: key);

  @override
  State<PeriodicalRepaint> createState() => _PeriodicalRepaintState();
}

class _PeriodicalRepaintState extends State<PeriodicalRepaint> {


  @override
  void initState() {
    Timer.periodic(const Duration(milliseconds: 100), (timer) => setState(() {}));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: RandomFigure(),
      foregroundPainter: RandomFigure(),
    );
  }
}
