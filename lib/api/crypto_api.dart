import 'package:chopper/chopper.dart';

part "crypto_api.chopper.dart";

/*
* In terminal :
* cd api
* flutter packages pub run build_runner build
* OR
* flutter packages pub run build_runner watch
*
*/

@ChopperApi(baseUrl: "")
abstract class CryptoApi extends ChopperService {
  static CryptoApi create([ChopperClient client]) => _$CryptoApi(client);

  @Get(path: '/ticker/?limit=50')
  Future getCryptoResponse();
}
