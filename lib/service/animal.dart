class Animal {
  final String name;
  final String url;
  final String latinName;
  final String activeTime;
  final String lengthMin;
  final String lengthMax;
  final String weightMin;
  final String weightMax;
  final String lifeSpan;
  final String habitat;

  Animal(
      {required this.name,
      required this.url,
      required this.latinName,
      required this.activeTime,
      required this.lengthMin,
      required this.lengthMax,
      required this.weightMin,
      required this.weightMax,
      required this.lifeSpan,
      required this.habitat});

  static List<Animal> snapshotToList(List snapshot) {
    return snapshot.map((data) {
      return Animal.fromJsonToAnimal(data);
    }).toList();
  }

  factory Animal.fromJsonToAnimal(dynamic data) {
    return Animal(
        name: data['name'] as String,
        url: data['image_link'] as String,
        latinName: data['latin_name'] as String,
        activeTime: data['active_time'] as String,
        lengthMin: data['length_min'] as String,
        lengthMax: data['length_max'] as String,
        weightMin: data['weight_min'] as String,
        weightMax: data['weight_max'] as String,
        lifeSpan: data['lifespan'] as String,
        habitat: data['habitat'] as String);
  }
}
