class CurrencyModel {
  final String name;
  final double kwanza;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;

  CurrencyModel(
      {required this.name,
      required this.kwanza,
      required this.real,
      required this.dolar,
      required this.euro,
      required this.bitcoin});

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(
          name: 'Kwanza',
          kwanza: 1.0,
          real: 0.11,
          dolar: 0.02,
          euro: 0.01,
          bitcoin: 0.0000016),
      CurrencyModel(
          name: 'Real',
          kwanza: 100.39,
          real: 1.0,
          dolar: 0.18,
          euro: 0.15,
          bitcoin: 0.000016),
      CurrencyModel(
          name: 'Dolar',
          kwanza: 859.99,
          real: 5.65,
          dolar: 1.0,
          euro: 0.85,
          bitcoin: 0.000088),
      CurrencyModel(
          name: 'Euro',
          kwanza: 900.23,
          real: 6.62,
          dolar: 1.17,
          euro: 1.0,
          bitcoin: 0.00010),
      CurrencyModel(
          name: 'Bitcoin',
          kwanza: 100000.21,
          real: 64116.51,
          dolar: 11351.38,
          euro: 9689.54,
          bitcoin: 1),
    ];
  }
}
