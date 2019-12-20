// To parse this JSON data, do
//
//     final cryptoCoinMarketResponse = cryptoCoinMarketResponseFromJson(jsonString);

import 'dart:convert';

List<CryptoCoinMarketResponse> cryptoCoinMarketResponseFromJson(String str) =>
    List<CryptoCoinMarketResponse>.from(
        json.decode(str).map((x) => CryptoCoinMarketResponse.fromJson(x)));

String cryptoCoinMarketResponseToJson(List<CryptoCoinMarketResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CryptoCoinMarketResponse {
  final String id;
  final String name;
  final String symbol;
  final String rank;
  final String priceUsd;
  final String priceBtc;
  final String the24HVolumeUsd;
  final String marketCapUsd;
  final String availableSupply;
  final String totalSupply;
  final String maxSupply;
  final String percentChange1H;
  final String percentChange24H;
  final String percentChange7D;
  final String lastUpdated;

  CryptoCoinMarketResponse({
    this.id,
    this.name,
    this.symbol,
    this.rank,
    this.priceUsd,
    this.priceBtc,
    this.the24HVolumeUsd,
    this.marketCapUsd,
    this.availableSupply,
    this.totalSupply,
    this.maxSupply,
    this.percentChange1H,
    this.percentChange24H,
    this.percentChange7D,
    this.lastUpdated,
  });

  factory CryptoCoinMarketResponse.fromJson(Map<String, dynamic> json) =>
      CryptoCoinMarketResponse(
        id: json["id"],
        name: json["name"],
        symbol: json["symbol"],
        rank: json["rank"],
        priceUsd: json["price_usd"],
        priceBtc: json["price_btc"],
        the24HVolumeUsd: json["24h_volume_usd"],
        marketCapUsd: json["market_cap_usd"],
        availableSupply: json["available_supply"],
        totalSupply: json["total_supply"],
        maxSupply: json["max_supply"],
        percentChange1H: json["percent_change_1h"],
        percentChange24H: json["percent_change_24h"],
        percentChange7D: json["percent_change_7d"],
        lastUpdated: json["last_updated"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "symbol": symbol,
        "rank": rank,
        "price_usd": priceUsd,
        "price_btc": priceBtc,
        "24h_volume_usd": the24HVolumeUsd,
        "market_cap_usd": marketCapUsd,
        "available_supply": availableSupply,
        "total_supply": totalSupply,
        "max_supply": maxSupply,
        "percent_change_1h": percentChange1H,
        "percent_change_24h": percentChange24H,
        "percent_change_7d": percentChange7D,
        "last_updated": lastUpdated,
      };
}
