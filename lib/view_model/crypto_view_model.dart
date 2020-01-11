import 'package:async/async.dart';
import 'package:crypto_app/model/coin_market_response.dart';
import 'package:crypto_app/repository/implementation/crypto_repo.dart';
import 'package:crypto_app/repository/root_repo.dart';

class CryptoViewModel {
  final AsyncMemoizer _memoizer = AsyncMemoizer();

  RootRepo repo;

  CryptoViewModel() {
    repo = CryptoRepo();
  }

  getCryptoResponse() {
    return this._memoizer.runOnce(
      () async {
        List<CryptoCoinMarketResponse> response =
            await repo.getCryptoResponse();
        return response;
      },
    );
  }
}
