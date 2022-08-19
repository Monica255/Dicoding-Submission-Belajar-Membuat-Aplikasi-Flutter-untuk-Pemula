import 'package:flutter/material.dart';

import '../../service/animal.dart';

class Detail extends StatelessWidget {
  final Animal animal;

  const Detail({Key? key, required this.animal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                          child: FadeInImage.assetNetwork(
                        placeholder: 'assets/placeholder.png',
                        image: animal.url,
                      )),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(22.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            animal.name,
                            maxLines: 1,
                            style: const TextStyle(
                              fontSize: 36.0,
                            ),
                          ),
                          const SizedBox(
                            height: 7.0,
                          ),
                          Text(
                            animal.latinName,
                            style: const TextStyle(
                              fontSize: 18.0,
                              color: Colors.green,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(
                            height: 7.0,
                          ),
                          Text(
                              'Lifespan: ${animal.lifeSpan} ${int.parse(animal.lifeSpan) > 1 ? 'years' : 'year'}'),
                          const SizedBox(
                            height: 7.0,
                          ),
                          Row(
                            children: [
                              Icon(
                                  animal.activeTime == 'Nocturnal'
                                      ? Icons.nightlight
                                      : Icons.sunny,
                                  color: Colors.green),
                              Text(animal.activeTime)
                            ],
                          ),
                          const SizedBox(
                            height: 18.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: double.infinity,
                            height: 34.0,
                            child: const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Characteristics',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                          const SizedBox(
                            height: 18.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${animal.lengthMin} m',
                                    style: TextStyle(
                                      color: Colors.green[800],
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  const Text('Minimum'),
                                  const Text('length'),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${animal.lengthMax} m',
                                    style: TextStyle(
                                      color: Colors.green[800],
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  const Text('Maximum'),
                                  const Text('length'),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${animal.weightMin} kg',
                                    style: TextStyle(
                                      color: Colors.green[800],
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  const Text('Minimum'),
                                  const Text('weight'),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${animal.weightMax} kg',
                                    style: TextStyle(
                                      color: Colors.green[800],
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  const Text('Maximum'),
                                  const Text('weight'),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 18.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: double.infinity,
                            height: 34.0,
                            child: const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Habitat',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                          const SizedBox(
                            height: 18.0,
                          ),
                          Align(
                              alignment: Alignment.center,
                              child: Text(
                                  'This animal usually live in ${animal.habitat.toLowerCase()}',
                                  textAlign: TextAlign.center)),
                          const SizedBox(
                            height: 18.0,
                          ),
                          const SizedBox(
                            height: 18.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 35.0,
                height: 35.0,
                child: FloatingActionButton(
                  backgroundColor: Colors.white70,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.green,
                  ),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
