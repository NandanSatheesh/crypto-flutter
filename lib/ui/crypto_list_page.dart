import 'package:crypto_app/model/coin_market_response.dart';
import 'package:crypto_app/ui/crypto_item_card.dart';
import 'package:crypto_app/view_model/crypto_view_model.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CryptoViewModel _vm = CryptoViewModel();

  final centeredCircularProgressIndicator =
      Center(child: CircularProgressIndicator());

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: FutureBuilder(
          future: _vm.getCryptoResponse(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  CryptoCoinMarketResponse coinMarketResponse =
                      snapshot.data[index];
                  return CryptoCardItem(
                      name: coinMarketResponse.name,
                      lastUpdated: coinMarketResponse.lastUpdated,
                      percentageChange: coinMarketResponse.percentChange1H,
                      priceInUSD: coinMarketResponse.priceUsd);
                },
              );
            } else {
              return centeredCircularProgressIndicator;
            }
          },
        ),
      );
}
