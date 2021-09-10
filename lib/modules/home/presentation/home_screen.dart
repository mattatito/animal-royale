import 'package:animal_royale/modules/home/presentation/widgets/app_bar/app_bar_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/ItemListTile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(
          title: 'Bem vindo!',
          height: 112,
          subtitle: 'Confira os animaizinhos do joguinho ',
        ),
        body: Column(
          children: [
            ItemListTile(
              title: 'Fox',
              imageUrl:
                  'https://static.wikia.nocookie.net/animalroyale_gamepedia_en/images/0/06/Char-fox.png/revision/latest/scale-to-width-down/152?cb=20201124165055',
              onTap: (){},
              detailsColor: Color(0xff595959),
            ),
          ],
        ),
      ),
    );
  }
}
