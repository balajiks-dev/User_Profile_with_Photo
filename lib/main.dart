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
              margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
              child: ListTile(
                leading: new CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage('https://miro.medium.com/max/400/1*gH1iKXJH8T12LIqhboZWEA.png'),
                ),
                title: new Text('Cole Baranet',style: TextStyle(color: Colors.green),),
                subtitle: Padding(padding: EdgeInsets.only(
                  top:10),
                     child: new Row(
                       // mainAxisSize: MainAxisSize.max,
                       //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: <Widget>[
                         new Icon(Icons.account_circle),
                         new Text('8,432',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w300),),
                         new Padding(
                           padding: EdgeInsets.only(left: 10.0),
                           child: Row(
                             children: <Widget>[
                               new Icon(Icons.timer),
                               new Text('10:20 am',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w300),),
                             ],
                           ),
                         ),
                         new Padding(
                             padding: EdgeInsets.only(left: 10.0,right: 5.0),
                             child: Row(
                               children: <Widget>[
                                 new Icon(Icons.calendar_today),
                                 new Text('12-08-2019',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w300),),
                               ],
                             )
                         ),
                       ],
                     ),
                ),
              ),
            ),
            Card(
              color: Colors.amberAccent,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),
              margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
              child: ListTile(
                leading: new CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage('https://miro.medium.com/max/400/1*gH1iKXJH8T12LIqhboZWEA.png'),
                ),
                title: new Text('Cole Baranet',style: TextStyle(color: Colors.green),),
                subtitle: Padding(padding: EdgeInsets.only(
                    top:10),
                  child: new Row(
                    // mainAxisSize: MainAxisSize.max,
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Icon(Icons.account_circle),
                      new Text('8,432',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w300),),
                      new Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: <Widget>[
                            new Icon(Icons.timer),
                            new Text('10:20 am',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w300),),
                          ],
                        ),
                      ),
                      new Padding(
                          padding: EdgeInsets.only(left: 10.0,right: 5.0),
                          child: Row(
                            children: <Widget>[
                              new Icon(Icons.calendar_today),
                              new Text('12-08-2019',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w300),),
                            ],
                          )
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.amberAccent,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),
              margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
              child: ListTile(
                leading: new CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage('https://miro.medium.com/max/400/1*gH1iKXJH8T12LIqhboZWEA.png'),
                ),
                title: new Text('Cole Baranet',style: TextStyle(color: Colors.green),),
                subtitle: Padding(padding: EdgeInsets.only(
                    top:10),
                  child: new Row(
                    // mainAxisSize: MainAxisSize.max,
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Icon(Icons.account_circle),
                      new Text('8,432',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w300),),
                      new Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: <Widget>[
                            new Icon(Icons.timer),
                            new Text('10:20 am',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w300),),
                          ],
                        ),
                      ),
                      new Padding(
                          padding: EdgeInsets.only(left: 10.0,right: 5.0),
                          child: Row(
                            children: <Widget>[
                              new Icon(Icons.calendar_today),
                              new Text('12-08-2019',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w300),),
                            ],
                          )
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
