import 'package:flutter/material.dart';

class DrawerView extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Card(
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
                    children: <Widget>[
                      new Icon(Icons.account_circle,size: 20),
                      new Text('8,432',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w300),),
                      new Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Row(
                          children: <Widget>[
                            new Icon(Icons.timer,size: 20),
                            new Text('10:20 am',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w300),),
                          ],
                        ),
                      ),
                      new Padding(
                          padding: EdgeInsets.only(left: 15.0,right: 5.0),
                          child: Row(
                            children: <Widget>[
                              new Icon(Icons.calendar_today,size: 20),
                              new Text('12-08-2019',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w300),),
                            ],
                          )
                      ),
                    ],
                  ),
                ),
              ),
            );
  }
}