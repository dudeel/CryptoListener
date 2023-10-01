// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

import 'abstract_coins_repository.dart';
import 'models/crypto_coin.dart';

class CryptoCoinsRepository implements AbstractCoinsRepository {
  CryptoCoinsRepository({
    required this.dio,
  });

  final Dio dio;

  @override
  Future<List<CryptoCoin>> getCoinsList() async {
    final response = await dio.get(
        'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB,SOL,USDT,CAG,DOV,XPR,TUSD,LINK,OGN&tsyms=USD');

    final data = response.data as Map<String, dynamic>;
    final dataRow = data['RAW'] as Map<String, dynamic>;
    final cryptoCoinsList = dataRow.entries.map((e) {
      final dataUSD =
          (e.value as Map<String, dynamic>)['USD'] as Map<String, dynamic>;

      final price = dataUSD['PRICE'];
      final imageURL = dataUSD['IMAGEURL'];

      return CryptoCoin(
        name: e.key,
        priceInUSD: price,
        imageURL: 'https://cryptocompare.com/$imageURL',
      );
    }).toList();

    return cryptoCoinsList;
  }
}
