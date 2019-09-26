import 'package:dare/model/common.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                child: Image.network('https://miro.medium.com/max/400/1*gH1iKXJH8T12LIqhboZWEA.png'),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
              ),
            ),
            ListTile(
              title: Text('Dashboard'),
              leading: Icon(Icons.dashboard),
              trailing: Icon(Icons.arrow_right),
            ),
            Divider(),
            ListTile(
              title: Text('Profile'),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.arrow_right),
            ),
            Divider(),
            ListTile(
              title: Text('Account Details'),
              leading: Icon(Icons.accessibility),
              trailing: Icon(Icons.arrow_right),
            ),
            Divider()
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          DrawerView(),
          DrawerView(),
        ],
      )
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
