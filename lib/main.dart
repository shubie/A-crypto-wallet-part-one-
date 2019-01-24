import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Crypto Wallet',
      home: CryptoWallet(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CryptoWallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // cryptoPortfolioItem() => Card(

    cryptoPortfolioItem(IconData icon, String name, double amount, double rate,
            String percentage) =>
        Card(
          elevation: 1.0,
          child: InkWell(
            onTap: () => print("tapped"),
            child: Container(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0, right: 15.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 15.0),
                    child: Icon(icon, color: Colors.grey),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              name,
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                            Text("\$$amount",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("$rate BTC",
                                style: TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.normal)),
                            Text("+ \$$percentage",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.red[500],
                                ))
                          ],
                        )
                      ],
                    ),
                    flex: 3,
                  ),
                ],
              ),
            ),
          ),
        );
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFF81269D),
                        const Color(0xFFEE112D)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      // stops: [0.0, 0.1],
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * .40,
                  padding: EdgeInsets.only(top: 55, left: 20, right: 20),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                          Text("YOUR PORTFOLIO (24H)",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500)),
                          IconButton(
                            icon: Icon(
                              FontAwesomeIcons.bell,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          )
                        ],
                      ),
                      SizedBox(height: 40),
                      Text(
                        r" $43,729.00",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 45.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Text(
                        r"+ $3,157.67 (23%)",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .75,
                  color: Colors.grey,
                )
              ],
            ),
            Container(
              alignment: Alignment.topCenter,
              padding: new EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .25,
                  right: 10.0,
                  left: 10.0),
              child: new Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  children: <Widget>[
                    cryptoPortfolioItem(FontAwesomeIcons.btc, "BTC", 410.80,
                        0.0036, "82.19(92%)"),
                    cryptoPortfolioItem(FontAwesomeIcons.ethereum, "ETH",
                        1089.86, 126.0, "13.10(2.3%)"),
                    cryptoPortfolioItem(FontAwesomeIcons.xRay, "XRP", 22998.13,
                        23000, "120(3.6%)"),
                    cryptoPortfolioItem(FontAwesomeIcons.btc, "BTC", 410.80,
                        0.0036, "82.19(92%)"),
                    cryptoPortfolioItem(FontAwesomeIcons.ethereum, "ETH",
                        1089.86, 126.0, "13.10(2.3%)"),
                    cryptoPortfolioItem(FontAwesomeIcons.xRay, "XRP", 22998.13,
                        23000, "120(3.6%)"),
                    cryptoPortfolioItem(FontAwesomeIcons.btc, "BTC", 410.80,
                        0.0036, "82.19(92%)"),
                    cryptoPortfolioItem(FontAwesomeIcons.ethereum, "ETH",
                        1089.86, 126.0, "13.10(2.3%)"),
                    cryptoPortfolioItem(FontAwesomeIcons.xRay, "XRP", 22998.13,
                        23000, "120(3.6%)"),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * .37,
              left: MediaQuery.of(context).size.width * .05,
              child: RaisedButton(
                  padding: EdgeInsets.symmetric(
                    vertical: 18.0,
                    horizontal: 38.0,
                  ),
                  color: Color(0xFFEE112D),
                  onPressed: () {},
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(25.0)),
                  child: Text(
                    "Send",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * .37,
              right: MediaQuery.of(context).size.width * .05,
              child: RaisedButton(
                  padding: EdgeInsets.symmetric(
                    vertical: 18.0,
                    horizontal: 30.0,
                  ),
                  color: Color(0xFFEE112D),
                  onPressed: () {},
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(25.0)),
                  child: Text(
                    "Receive",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * .43,
              left: MediaQuery.of(context).size.width * .30,
              child: RaisedButton(
                  padding: EdgeInsets.symmetric(
                    vertical: 18.0,
                    horizontal: 34.0,
                  ),
                  color: Color(0xFFEE112D),
                  onPressed: () {},
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(25.0)),
                  child: Text(
                    "Exchange",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * .33,
              left: MediaQuery.of(context).size.width * .40,
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: null,
                child: Icon(
                  Icons.close,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
