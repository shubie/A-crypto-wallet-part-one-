import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Crypto Wallet',
      home: CryptoWallet(),
    );
  }
}

class CryptoWallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    makeCard() => Card(
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
                    child: Icon(Icons.autorenew, color: Colors.black),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "BTC",
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                            Text("\$140.00",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("0.03 BTC",
                                style: TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.normal)),
                            Text("+ \$82.19(92%)")
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
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.access_alarm), onPressed: null)
        ],
        title: Text("SALES HISTORY"),
        elevation: .1,
      ),
//      drawer: AppDrawer(),
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
                    height: MediaQuery.of(context).size.height * .20,
                    // color: Theme.of(context).primaryColor,
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: <Widget>[
                          Text("N243,999",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    )),
                Container(
                  height: MediaQuery.of(context).size.height * .75,
                  color: Colors.grey,
                )
              ],
            ),
            Container(
              alignment: Alignment.topCenter,
              padding: new EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .15,
                  right: 10.0,
                  left: 10.0),
              child: new Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  children: <Widget>[
                    makeCard(),
//                    SizedBox(height: 10.0,),
                    makeCard(),
                    makeCard(),

                    makeCard(),
                    makeCard(),
                    makeCard(),
                    makeCard(),
                    makeCard(),
                  ],
                ),
              ),
            ),
            Positioned(
                left: 30.0,
                top: MediaQuery.of(context).size.height * .65,
                child: RaisedButton(
                    padding: EdgeInsets.symmetric(
                      vertical: 14.0,
                    ),
                    color: Color.fromRGBO(46, 49, 146, 1.0),
                    onPressed: () {},
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    child: Text("hello"))),
            Positioned(
                right: 30.0,
                top: MediaQuery.of(context).size.height * .65,
                child: RaisedButton(onPressed: () {}, child: Text("hello"))),
            Positioned(
                right: 140.0,
                top: MediaQuery.of(context).size.height * .55,
                child: RaisedButton(onPressed: () {}, child: Text("hello"))),
            Positioned(
                right: 160.0,
                top: MediaQuery.of(context).size.height * .75,
                child: FloatingActionButton(
                  onPressed: null,
                  child: Icon(Icons.close),
                ))
          ],
        ),
      ),
    );
  }
}
