// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$CryptoApi extends CryptoApi {
  _$CryptoApi([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = CryptoApi;

  Future<dynamic> getCryptoResponse() {
    final $url = 'https://api.coinmarketcap.com/v1/ticker/?limit=50';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send($request);
  }
}
