import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:crypto/repositories/crypto_coins/abstract_coins_repository.dart';
import 'package:crypto/theme/crypto_coins_list_app.dart';
import 'repositories/crypto_coins/crypto_coins_repository.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  GetIt.I.registerLazySingleton<AbstractCoinsRepository>(
      () => CryptoCoinsRepository(dio: Dio()));

  runApp(const CryptoCurrenciesListApp());
}
