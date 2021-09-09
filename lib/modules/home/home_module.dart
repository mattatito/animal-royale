

import 'package:animal_royale/modules/home/presentation/home_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module{

    @override
  final List<Bind> binds = [
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (context, args) => HomeScreen())
  ];

}