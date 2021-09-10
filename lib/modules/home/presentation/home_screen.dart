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

    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(
          title: 'Bem vindo!',
          height: size.height * 0.15,
          subtitle: 'Confira os personagens de Super Animal Royale! ',
        ),
        body: Container(
          margin: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              ItemListTile(
                title: 'Fox',
                imageUrl:
                    'https://static.wikia.nocookie.net/animalroyale_gamepedia_en/images/0/06/Char-fox.png/revision/latest/scale-to-width-down/152?cb=20201124165055',
                onTap: (){},
                detailsColor: Color(0xff595959),
              ),
              ItemListTile(
                title: 'Bear',
                imageUrl:
                    'https://static.wikia.nocookie.net/animalroyale_gamepedia_en/images/6/69/Char-bear.png/revision/latest/scale-to-width-down/152?cb=20201124171657',
                onTap: (){},
                detailsColor: Color(0xff595959),
              ),
              ItemListTile(
                title: 'SkullCat',
                imageUrl:
                    'https://static.wikia.nocookie.net/animalroyale_gamepedia_en/images/5/56/Char-skullcat.png/revision/latest/scale-to-width-down/152?cb=20201123045143',
                onTap: (){},
                detailsColor: Color(0xff595959),
              ),
              ItemListTile(
                title: 'Tiger',
                imageUrl:
                    'https://static.wikia.nocookie.net/animalroyale_gamepedia_en/images/1/11/Char-tiger.png/revision/latest/scale-to-width-down/152?cb=20201122175457',
                onTap: (){},
                detailsColor: Color(0xff595959),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
