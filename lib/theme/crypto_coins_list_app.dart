import 'package:crypto/router/router.dart';
import 'package:crypto/theme/theme.dart';
import 'package:flutter/material.dart';

class CryptoCurrenciesListApp extends StatelessWidget {
  const CryptoCurrenciesListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CryptoList',
      theme: darkTheme,
      routes: routes,
    );
  }
}
