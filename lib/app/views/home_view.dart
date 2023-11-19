import 'package:conversor/app/componentes/currency_box.dart';
import 'package:conversor/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController toText = TextEditingController();
  TextEditingController fromText = TextEditingController();
  late HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(
                right: 30, left: 30, top: 120, bottom: 20),
            child: Column(children: [
              ClipOval(
                child: Image.asset(
                  'assets/img/videologo.png',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              CurrencyBox(
                  selectedItem: homeController.toCurrency,
                  controller: toText,
                  items: homeController.currencies,
                  onChanged: (model) =>
                      {setState(() => homeController.toCurrency = model!)}),
              const SizedBox(
                height: 10,
              ),
              CurrencyBox(
                  selectedItem: homeController.fromCurrency,
                  controller: fromText,
                  items: homeController.currencies,
                  onChanged: (model) =>
                      {setState(() => homeController.fromCurrency = model!)}),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                  onPressed: () {
                    homeController.convert();
                  },
                  child: const Text('Converter'))
            ]),
          ),
        ),
      ),
    );
  }
}
