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
      body: Container(
        child: Column(
          children: <Widget>[
            Card(
              color: Colors.amberAccent,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),
              margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
              child: ListTile(
                leading: new CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage('https://miro.medium.com/max/400/1*gH1iKXJH8T12LIqhboZWEA.png'),
                ),
                title: new Text('Cole Baranet',style: TextStyle(color: Colors.green),),
                subtitle: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[

                  ],
                ),
              ),
            ),
            Card(
              color: Colors.amberAccent,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),
              margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
              child: ListTile(
//                leading: new ClipRRect(
//                  borderRadius: new BorderRadius.circular(10.0),
//                  child: new Image.network('https://miro.medium.com/max/400/1*gH1iKXJH8T12LIqhboZWEA.png'),
//                ),
               leading: new CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage('https://miro.medium.com/max/400/1*gH1iKXJH8T12LIqhboZWEA.png'),
               ),
                title: new Text('Cole Baranet',style: TextStyle(color: Colors.green),),
                subtitle: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[

                  ],
                ),
              ),
            ),
            Card(
              color: Colors.amberAccent,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),
              margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
              child: ListTile(
                leading: new CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage('https://miro.medium.com/max/400/1*gH1iKXJH8T12LIqhboZWEA.png'),
                ),
                title: new Text('Cole Baranet',style: TextStyle(color: Colors.green),),
                subtitle: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[

                  ],
                ),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
