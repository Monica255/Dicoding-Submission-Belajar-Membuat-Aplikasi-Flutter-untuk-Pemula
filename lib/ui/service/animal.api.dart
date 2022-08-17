import 'dart:convert';
import 'package:animal_app/ui/service/animal.dart';
import 'package:http/http.dart' as http;

class AnimalApi{
  static Future<List<Animal>> getAnimal() async {
    List tempList=[];
    try{
      var uri = Uri.https(
          'zoo-animal-api.herokuapp.com', '/animals/rand/10');

      final responseData = await http.get(uri);

      tempList = json.decode(responseData.body) as List;
      //tempList = responseData.body;
      print(tempList);

  /*    for (var i in ) {
      _tempList.add(i['content']['details']);
    }*/


    }catch(e){
      print(e);
    }
    return Animal.snapshotToList(tempList);
  }
}