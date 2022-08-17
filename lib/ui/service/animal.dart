class Animal {
  final String name;
  final String url;
  final String latinName;
  final String activeTime;
  final String lengthMin;
  final String lengthMax;

  Animal({
    required this.name,
    required this.url,
    required this.latinName,
    required this.activeTime,
    required this.lengthMin,
    required this.lengthMax
  });

  static List<Animal> snapshotToList(List snapshot) {
    return snapshot.map((data) {
      return Animal.fromJsonToAnimal(data);
    }).toList();
  }

  factory Animal.fromJsonToAnimal(dynamic data){
    return Animal(name: data['name'] as String,
        url: data['image_link'] as String,
        latinName: data['latin_name'] as String,
        activeTime: data['active_time'] as String,
        lengthMin: data['length_min'] as String,
        lengthMax: data['length_max'] as String);
  }

}