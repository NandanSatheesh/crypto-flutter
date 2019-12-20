import 'package:crypto_app/model/coin_market_response.dart';
import 'package:crypto_app/repository/implementation/crypto_repo.dart';
import 'package:crypto_app/repository/root_repo.dart';

class CryptoViewModel {
  RootRepo repo;

  CryptoViewModel() {
    repo = CryptoRepo();
  }

  Future<List<CryptoCoinMarketResponse>> getCryptoResponse() {
    return repo.getCryptoResponse().then((response) {
      return response;
    });
  }
}
