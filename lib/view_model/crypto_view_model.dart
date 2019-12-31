import 'package:crypto_app/model/coin_market_response.dart';
import 'package:crypto_app/repository/implementation/crypto_repo.dart';
import 'package:crypto_app/repository/root_repo.dart';
import 'package:rxdart/rxdart.dart';

class CryptoViewModel {
  RootRepo repo;

  CryptoViewModel() {
    repo = CryptoRepo();
  }

  BehaviorSubject<List<CryptoCoinMarketResponse>> dataStream =
      new BehaviorSubject<List<CryptoCoinMarketResponse>>.seeded(null);

  Future<List<CryptoCoinMarketResponse>> getCryptoResponse() async {
    List<CryptoCoinMarketResponse> response = await repo.getCryptoResponse();
    dataStream.add(response);
    return response;
  }
}
