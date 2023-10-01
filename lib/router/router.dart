import 'package:crypto/features/crypto_list_screen/crypto_list.dart';
import 'package:crypto/features/crypto_coin_screen/crypto_coin.dart';

final routes = {
  '/': (context) => const CryptoListScreen(),
  '/coin': (context) => const CryptoCoinScreen(),
};
