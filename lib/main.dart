import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<int> data = [0];
  int u;
  int i = 0;

  int ambil(int i) {
    data.add(i);
    return i++;
  }

  int nol(int i) {
    return i = 0;
  }

  int ant(int u) {
    return i - 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/background.png'), fit: BoxFit.cover)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 40.0, bottom: 60.0),
                  child: Image(
                    image: AssetImage('images/logo.png'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  padding: EdgeInsets.only(top: 20.0),
                  decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40.0),
                          topLeft: Radius.circular(40.0))),
                  width: double.infinity,
                  height: 190,
                  child: Column(
                    children: [
                      Text(
                        "Nomor Pemesanan Anda",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 24),
                      ),
                      Text(
                        i.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 90),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40.0),
                          bottomLeft: Radius.circular(40.0))),
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 20.0, right: 10.0),
                  height: 60,
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Antrean Cetak Saat Ini : ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                            fontSize: 18),
                      ),
                      Text(
                        i.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
                  decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "1. Ambil Nomor Pemesanan Anda",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 16),
                            ),
                            RaisedButton(
                              color: Colors.purple,
                              textColor: Colors.white,
                              child: Text("Ambil Nomor"),
                              shape: StadiumBorder(),
                              onPressed: () {
                                setState(() {
                                  ambil(i++);
                                  ant(u);
                                });
                              },
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "2. Lanjutkan Melalui WhatsApp",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 16),
                            ),
                            RaisedButton(
                              color: Colors.green,
                              textColor: Colors.white,
                              child: Text("Pesan via WhatsApp"),
                              shape: StadiumBorder(),
                              onPressed: () {
                                setState(() {
                                  nol(i = 0);
                                });
                              },
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
