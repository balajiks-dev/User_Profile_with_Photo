import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';


class ProfileCardView extends StatelessWidget {
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

class QrCodeGenerator extends StatelessWidget {
  final String data = "123456";

  @override
  Widget build(BuildContext context) {
    return QrImage(data: data,size: 300);
  }
}

class TopCalender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          DateTimePickerFormField(
           inputType: InputType.date,
           format: DateFormat("yyyy-MM-dd"),
           initialDate: DateTime(2019, 1, 1),
           editable: false,
           decoration: InputDecoration(
            labelText: 'Date',
            icon: Icon(Icons.calendar_today),
            hasFloatingPlaceholder: false
          )
          )
        ],
      ),
    );
  }

}