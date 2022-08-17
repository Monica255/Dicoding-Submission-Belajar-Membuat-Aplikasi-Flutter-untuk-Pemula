import 'package:flutter/material.dart';
import 'package:animal_app/ui/service/animal.api.dart';
import '../service/animal.dart';
import '../widgets/animal_card.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home> {
  bool _isLoading = true;
  late List<Animal> _list;

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    _list = await AnimalApi.getAnimal();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: const Text(
          "Animals",
          style: TextStyle(fontSize: 20.0, color: Colors.green),
        ),
        centerTitle: true,
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _list.length,
              itemBuilder: (context, idx) {
                return AnimalCard(url: _list[idx].url, name: _list[idx].name);
              }),
    );
  }
}
