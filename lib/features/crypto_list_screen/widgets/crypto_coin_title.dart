import 'package:crypto/repositories/crypto_coins/crypto_coins.dart';
import 'package:flutter/material.dart';

class CryptoCoinTitle extends StatelessWidget {
  const CryptoCoinTitle({
    super.key,
    required this.coin,
  });
  final CryptoCoin coin;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: Image.network(
        coin.imageURL,
        scale: 6,
      ),
      title: Text(
        coin.name,
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text(
        '\$ ${coin.priceInUSD}',
        style: theme.textTheme.labelSmall,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.of(context).pushNamed('/coin', arguments: coin.name);
      },
    );
  }
}
