import 'package:animal_royale/modules/home/domain/models/animal_model.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store{

  List<AnimalModel> _animalsMock = [
    AnimalModel('Fox', 'https://static.wikia.nocookie.net/animalroyale_gamepedia_en/images/0/06/Char-fox.png/revision/latest/scale-to-width-down/152?cb=20201124165055'),
    AnimalModel('Bear','https://static.wikia.nocookie.net/animalroyale_gamepedia_en/images/6/69/Char-bear.png/revision/latest/scale-to-width-down/152?cb=20201124171657')
  ];

  @observable
  List<AnimalModel> animals = [];
  
  @observable
  bool loading = false;

  @observable
  String error = '';

  @action
  fetchAnimals() async{
    loading = true;
    await Future.delayed(Duration(seconds: 3));
    animals = _animalsMock;
  }

}