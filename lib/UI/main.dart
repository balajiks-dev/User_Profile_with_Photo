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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
 // MyHomePage({Key key, this.title}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
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
                      onTap: () {
                        Navigator.pop(context);
                      },
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
                  Divider(),
                  new Container(
                    child: ListTile(
                      title: Text('Attendance'),
                      leading: Icon(Icons.present_to_all),
                      trailing: Icon(Icons.arrow_right),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TopCalenderDate()),
                        );
                      },
                    ),
                  ),
                  Divider(),
                  new Container(
                    child: ListTile(
                      title: Text('Your Profile QR Code'),
                      leading: Icon(Icons.contact_mail),
                      trailing: Icon(Icons.arrow_right),
                      onTap: () {
                         Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) => QRCodeGenerator()),
                          );}
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
               child: const Icon(Icons.camera, size: 30.0,), onPressed: () {
               Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => QRCodeGenerator()),
               );
               }),
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
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
          ProfileCardView(),
          ProfileCardView(),
        ],
      )
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class QRCodeGenerator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      child:   ListTile(
                        title: Text('Dashboard'),
                        leading: Icon(Icons.dashboard),
                        trailing: Icon(Icons.arrow_right),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyHomePage()),
                          );
                        },
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
                    Divider(),
                    new Container(
                      child: ListTile(
                        title: Text('Attendance'),
                        leading: Icon(Icons.present_to_all),
                        trailing: Icon(Icons.arrow_right),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => TopCalenderDate()),
                           );

                        },
                      ),
                    ),
                    Divider(),
                    new Container(
                      color: Colors.grey,
                      child: ListTile(
                          title: Text('Your Profile QR Code'),
                          leading: Icon(Icons.contact_mail),
                          trailing: Icon(Icons.arrow_right),
                          onTap: () {
                            Navigator.pop(context);
                          }
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      appBar: AppBar(
        title: Text("Your Qr Code Generated"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: QrCodeGenerator(),
      )
    );
  }
}

class TopCalenderDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
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
                    child:   ListTile(
                      title: Text('Dashboard'),
                      leading: Icon(Icons.dashboard),
                      trailing: Icon(Icons.arrow_right),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyHomePage()),
                        );
                      },
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
                  Divider(),
                  new Container(
                    color: Colors.grey,
                    child: ListTile(
                      title: Text('Attendance'),
                      leading: Icon(Icons.present_to_all),
                      trailing: Icon(Icons.arrow_right),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Divider(),
                  new Container(
                    child: ListTile(
                        title: Text('Your Profile QR Code'),
                        leading: Icon(Icons.contact_mail),
                        trailing: Icon(Icons.arrow_right),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => QRCodeGenerator()),
                          );}
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Calender Date"),
      ),
      body: Center(
        child: TopCalender(),
      ),
    );
  }

}
