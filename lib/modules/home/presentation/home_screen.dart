import 'package:animal_royale/modules/home/presentation/widgets/app_bar/app_bar_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _rating = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Bem vindo!',
        height: 112,
        subtitle: 'Confira os animaizinhos do joguinho ',
      ),
      body: Container(
        child: Slider(
          value: _rating,
          onChangeEnd: (v) {},
          onChanged: (newValue) => setState(() => _rating = newValue),
          min: 0,
          max: 100,
        ),
      ),
    );
  }
}
