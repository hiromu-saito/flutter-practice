//TODO: Add your imports here.
import 'dart:convert';

import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

// const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate/BTC/';
const apiKey = '';

class CoinData {
  dynamic getCoinData(String currency) async {
    http.Response response =
        await http.get('$coinAPIURL$currency?apikey=$apiKey');
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print(response.statusCode);
    }
  }
}
