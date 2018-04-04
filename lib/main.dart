import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Exercise',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.green,
      ),
      home: new MyHomePage(title: '(DR) Flutter Execise'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
        appBar: new AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: new Text(widget.title),
        ),
        body: new Column(children: <Widget>[
          new Container(
              height: 130.0,
              margin: new EdgeInsets.only(bottom: 8.0),
              child: new ListView(
                  scrollDirection: Axis.horizontal,
                  children: <String>[
                    'http://image.tmdb.org/t/p/w500/b6ZJZHUdMEFECvGiDpJjlfUWela.jpg',
                    'http://image.tmdb.org/t/p/w500/yVlaVnGRwJMxB3txxwA24XurSNp.jpg',
                    'http://image.tmdb.org/t/p/w500/mo5EJsExrQCroqPDwUwp6jeq0xS.jpg',
                  ].map((String url) {
                    return new Card(
                        elevation: 1.0,
                        child: new Container(
                            width: 250.0,
                            height: 130.0,
                            child: new Image.network(url, fit: BoxFit.cover)));
                  }).toList())),
          new Expanded(
              child: new GridView.count(
                  crossAxisCount: 3,
                  childAspectRatio: 1.0,
                  padding: const EdgeInsets.all(4.0),
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                  children: <String>[
                    'http://image.tmdb.org/t/p/w185/uxzzxijgPIY7slzFvMotPv8wjKA.jpg',
                    'http://image.tmdb.org/t/p/w185/eKi8dIrr8voobbaGzDpe8w0PVbC.jpg',
                    'http://image.tmdb.org/t/p/w185/pU1ULUq8D3iRxl1fdX2lZIzdHuI.jpg',
                    'http://image.tmdb.org/t/p/w185/ePyN2nX9t8SOl70eRW47Q29zUFO.jpg',
                    'http://image.tmdb.org/t/p/w185/k4FwHlMhuRR5BISY2Gm2QZHlH5Q.jpg',
                    'http://image.tmdb.org/t/p/w185/v5HlmJK9bdeHxN2QhaFP1ivjX3U.jpg',
                    'http://image.tmdb.org/t/p/w185/d3qcpfNwbAMCNqWDHzPQsUYiUgS.jpg',
                    'http://image.tmdb.org/t/p/w185/fchHLsLjFvzAFSQykiMwdF1051.jpg',
                    'http://image.tmdb.org/t/p/w185/6jsqmMgR75VYC9AM6eToMJh3RxF.jpg',
                  ].map((String url) {
                    return new Card(
                        child: new Container(
                            child: new GridTile(
                                child: new Image.network(url,
                                    fit: BoxFit.cover))));
                  }).toList())),
          new Container(
              margin: const EdgeInsets.only(top: 16.0),
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.center,
              decoration: new BoxDecoration(
                color: Colors.grey[2 * 100],
              ),
              child: new Text('Build with flutter',
                  style: new TextStyle(fontSize: 12.0)))
        ]));
  }
}
