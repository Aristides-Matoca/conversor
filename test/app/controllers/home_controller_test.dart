import 'package:conversor/app/controllers/home_controller.dart';
import 'package:conversor/app/models/currency_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TextEditingController toText = TextEditingController();
  TextEditingController fromText = TextEditingController();
  final homeController = HomeController(toText: toText, fromText: fromText);

  test(
      'Deve converter de real para dolar',
      () => {
            toText.text = '2,0',
            homeController.convert(),
            expect(fromText.text, '0.36')
          });
  test(
      'Deve converter de real para dolar',
      () => {
            toText.text = '2.0',
            homeController.convert(),
            expect(fromText.text, '0.36')
          });
  test(
      'Deve converter de dolar para real',
      () => {
            toText.text = '1.0',
            homeController.toCurrency = CurrencyModel(
                name: 'Dolar',
                kwanza: 0.02,
                real: 5.65,
                dolar: 1.0,
                euro: 0.85,
                bitcoin: 0.000088),
            homeController.fromCurrency = CurrencyModel(
                name: 'Real',
                kwanza: 0.11,
                real: 1.0,
                dolar: 0.18,
                euro: 0.15,
                bitcoin: 0.000016),
            homeController.convert(),
            expect(fromText.text, '5.65')
          });
}
