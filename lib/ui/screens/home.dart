import 'package:animal_app/ui/widgets/animal_grid.dart';
import 'package:flutter/material.dart';
import 'package:animal_app/service/animal.api.dart';
import 'package:animal_app/service/animal.dart';
import '../widgets/animal_list.dart';

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
          : LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth <= 600) {
                return AnimalList(list: _list, ctx: context);
              } else if (constraints.maxWidth <= 1200) {
                return AnimalGrid(list: _list, ctx: context, crossAxisCount: 4);
              } else {
                return AnimalGrid(list: _list, ctx: context, crossAxisCount: 6);
              }
            }),
    );
  }
}
