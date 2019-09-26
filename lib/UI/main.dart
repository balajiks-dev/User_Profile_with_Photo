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
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Material(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        child: Image.network('https://miro.medium.com/max/400/1*gH1iKXJH8T12LIqhboZWEA.png',height: 100,width: 100,),
                      ),
                      Padding(padding: EdgeInsets.all(4.0),child: Text('Defence Profile',style: TextStyle(color: Colors.white,fontSize: 20.0),),),
                    ],
                  ),
                ),
              decoration: BoxDecoration(
                color: Colors.lightGreen,
              ),
            ),
            new Card(
              child: Column(
                children: <Widget>[
                  new Container(
                    color: Colors.grey,
                    child:   ListTile(
                      title: Text('Dashboard'),
                      leading: Icon(Icons.dashboard),
                      trailing: Icon(Icons.arrow_right),
                    ),
                  ),
                  Divider(),
                  new Container(
                    child: ListTile(
                      title: Text('Account Details'),
                      leading: Icon(Icons.accessibility),
                      trailing: Icon(Icons.arrow_right),
                    ),
                  ),
                  Divider(),
                  new Container(
                    child: ListTile(
                      title: Text('Profile'),
                      leading: Icon(Icons.person),
                      trailing: Icon(Icons.arrow_right),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
        floatingActionButtonLocation:
        FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          height: 40,
          width: 40,
          child: FittedBox(
             child: FloatingActionButton(
               child: const Icon(Icons.camera_alt, size: 30.0,), onPressed: () {
              },),
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0, // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.dashboard),
              title: new Text('DashBoard'),
              backgroundColor: Colors.grey,
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.calendar_today),
              title: new Text('Calender'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text('HorseList'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more),
              title: Text('More'),
            )
          ],
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
