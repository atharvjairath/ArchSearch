import 'customerpage2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../auth.dart';

const activecolour = Color(0xFF1D1E33);
const inactivecolour = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'LIST OF ALL NEARBY SHOPS',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ), //fix style and bold font size
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => results()));
                },
                child: Container(
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
                                  Text('BAJAJ STORE',
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
                                          color: Color(0xFF8D8E98),
                                          fontSize: 18.0))
                                ]),
                          ],
                        ),
                      ]),
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => results()));
                },
                child: Container(
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
                                  Text('APKA STORE',
                                      style: TextStyle(
                                          color: Color(0xFFEB1555),
                                          fontWeight: FontWeight.w900,
                                          fontSize: 30.0)),
                                  Text('MALVIYA NAGAR',
                                      style: TextStyle(
                                          color: Color(0xFF8D8E98),
                                          fontSize: 18.0)),
                                  Text('9650467164',
                                      style: TextStyle(
                                          color: Color(0xFF8D8E98),
                                          fontSize: 18.0))
                                ]),
                          ],
                        ),
                      ]),
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => results()));
                },
                child: Container(
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
                                  Text('EASYDAY',
                                      style: TextStyle(
                                          color: Color(0xFFEB1555),
                                          fontWeight: FontWeight.w900,
                                          fontSize: 30.0)),
                                  Text('SAIDULAJAB',
                                      style: TextStyle(
                                          color: Color(0xFF8D8E98),
                                          fontSize: 18.0)),
                                  Text('9650086966',
                                      style: TextStyle(
                                          color: Color(0xFF8D8E98),
                                          fontSize: 18.0))
                                ]),
                          ],
                        ),
                      ]),
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => results()));
                },
                child: Container(
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
                                  Text('24/7',
                                      style: TextStyle(
                                          color: Color(0xFFEB1555),
                                          fontWeight: FontWeight.w900,
                                          fontSize: 30.0)),
                                  Text('SAKET',
                                      style: TextStyle(
                                          color: Color(0xFF8D8E98),
                                          fontSize: 18.0)),
                                  Text('8527069045',
                                      style: TextStyle(
                                          color: Color(0xFF8D8E98),
                                          fontSize: 18.0))
                                ]),
                          ],
                        ),
                      ]),
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
