import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'auth.dart';

class shopkeeper extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ArchSearch'),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('logout'),
            onPressed: () async {
              await _auth.signOut();
            },
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 150,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('images/grocery.jpg'),
                              ),
                            ),
                          ),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(' BAJAJ STORE',
                                  style: TextStyle(
                                      color: Color(0xFFEB1555),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 30.0)),
                              Text('SAKET',
                                  style: TextStyle(
                                      color: Color(0xFF8D8E98),
                                      fontSize: 18.0)),
                              Text('8800965511',
                                  style: TextStyle(
                                      color: Color(0xFF8D8E98), fontSize: 18.0))
                            ]),
                      ],
                    )
                  ]),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xFF1D1E33),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Column(children: <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        TextField(
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            //Do something with the user input
                          },
                          decoration: InputDecoration(
                            hintText: 'Enter items which are not availabe',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.blueAccent, width: 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.blueAccent, width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0)),
                            ),
                          ),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ]),
                    ]),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFF1D1E33),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Column(children: <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('SLOTS',
                            style: TextStyle(
                                color: Color(0xFFEB1555),
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0)),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            '9:30-10:30',
                            style: TextStyle(fontSize: 25.0),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text('10:30-11:30',
                              style: TextStyle(fontSize: 25.0)),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text('11:30-12:30',
                              style: TextStyle(fontSize: 25.0)),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text('12:30-13:30',
                              style: TextStyle(fontSize: 25.0)),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text('13:30-14:30',
                              style: TextStyle(fontSize: 25.0)),
                        ),
                      ]),
                    ]),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFF1D1E33),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
