import 'package:animal_royale/modules/home/presentation/home_store.dart';
import 'package:animal_royale/modules/home/presentation/widgets/app_bar/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'widgets/ItemListTile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final store = HomeStore();
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
          child: Observer(
            builder: (context) => ListView.builder(
              itemCount: store.animals.length,
              itemBuilder: (context, index){
                final animal = store.animals[index];
                return ItemListTile(
                  title: animal.name,
                  imageUrl: animal.photoUrl,
                  onTap: (){},
                  detailsColor: Color(0xff595959),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
