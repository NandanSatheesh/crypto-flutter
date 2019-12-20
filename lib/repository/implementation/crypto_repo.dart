import 'package:chopper/chopper.dart';
import 'package:crypto_app/api/crypto_api.dart';
import 'package:crypto_app/model/coin_market_response.dart';
import 'package:crypto_app/repository/root_repo.dart';

class CryptoRepo extends RootRepo {
  CryptoApi cryptoApi;

  CryptoApi apiService;

  CryptoRepo() {
    final chopper = ChopperClient(
      baseUrl: "https://api.coinmarketcap.com/v1",
      services: [CryptoApi.create()],
    );
    apiService = CryptoApi.create(chopper);
  }

  @override
  Future<List<CryptoCoinMarketResponse>> getCryptoResponse() {
    List<CryptoCoinMarketResponse> cryptoResponse;
    return apiService.getCryptoResponse().then((response) {
      cryptoResponse = cryptoCoinMarketResponseFromJson(response.body);
      return cryptoResponse;
    }).catchError((error) {
      print('ERROR => $error');
    });
  }
}
