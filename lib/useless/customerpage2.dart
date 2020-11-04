import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:nice_button/nice_button.dart';

class results extends StatefulWidget {
  @override
  _resultsState createState() => _resultsState();
}

class _resultsState extends State<results> {
  var firstColor = Color(0xffDA4453), secondColor = Color(0xff89216B);
  int counter1 = 0;
  int counter2 = 0;
  int counter3 = 0;
  int counter4 = 0;
  int counter5 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ArchSearch'),
      ),
      body: Column(
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
                            Text('BAJAJ STORE',
                                style: TextStyle(
                                    color: Color(0xFFEB1555),
                                    fontWeight: FontWeight.w900,
                                    fontSize: 30.0)),
                            Text('SAKET',
                                style: TextStyle(
                                    color: Color(0xFF8D8E98), fontSize: 18.0)),
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
                      Text('LIST OF THINGS NOT AVAILABE',
                          style: TextStyle(
                              color: Color(0xFFEB1555),
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0)),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('1.Wheat',
                          style:
                              TextStyle(color: Colors.white, fontSize: 18.0)),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('2.Rice',
                          style:
                              TextStyle(color: Colors.white, fontSize: 18.0)),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('3.Fresh Potatoes',
                          style:
                              TextStyle(color: Colors.white, fontSize: 18.0)),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('4.Onion',
                          style: TextStyle(color: Colors.white, fontSize: 18.0))
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
                      Text('BOOK SLOTS',
                          style: TextStyle(
                              color: Color(0xFFEB1555),
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0)),
                      NiceButton(
                        background: null,
                        radius: 40,
                        padding: const EdgeInsets.all(1),
                        text: "9:30-10:30              $counter1",
                        gradientColors: [secondColor, firstColor],
                        onPressed: () {
                          setState(() {
                            Alert(
                              context: context,
                              title: "STATUS",
                              desc: "Your slot has been booked",
                              image:
                                  Image.asset("images/27889-3-green-tick.png"),
                              buttons: [
                                DialogButton(
                                  child: Text(
                                    "OKAY",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  onPressed: () => Navigator.pop(context),
                                  color: Color.fromRGBO(0, 179, 134, 1.0),
                                  radius: BorderRadius.circular(0.0),
                                ),
                              ],
                            ).show();
                            counter1++;
                          });
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      NiceButton(
                        radius: 40,
                        padding: const EdgeInsets.all(1),
                        text: "10:30-11:30              $counter2",
                        gradientColors: [secondColor, firstColor],
                        onPressed: () {
                          setState(() {
                            Alert(
                              context: context,
                              title: "STATUS",
                              desc: "Your slot has been booked",
                              image:
                                  Image.asset("images/27889-3-green-tick.png"),
                              buttons: [
                                DialogButton(
                                  child: Text(
                                    "OKAY",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  onPressed: () => Navigator.pop(context),
                                  color: Color.fromRGBO(0, 179, 134, 1.0),
                                  radius: BorderRadius.circular(0.0),
                                ),
                              ],
                            ).show();
                            counter2++;
                          });
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      NiceButton(
                        radius: 40,
                        padding: const EdgeInsets.all(1),
                        text: "11:30-12:30              $counter3",
                        gradientColors: [secondColor, firstColor],
                        onPressed: () {
                          setState(() {
                            Alert(
                              context: context,
                              title: "STATUS",
                              desc: "Your slot has been booked",
                              image:
                                  Image.asset("images/27889-3-green-tick.png"),
                              buttons: [
                                DialogButton(
                                  child: Text(
                                    "OKAY",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  onPressed: () => Navigator.pop(context),
                                  color: Color.fromRGBO(0, 179, 134, 1.0),
                                  radius: BorderRadius.circular(0.0),
                                ),
                              ],
                            ).show();
                            counter3++;
                          });
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      NiceButton(
                        radius: 40,
                        padding: const EdgeInsets.all(1),
                        text: "12:30-13:30              $counter4",
                        gradientColors: [secondColor, firstColor],
                        onPressed: () {
                          setState(() {
                            Alert(
                              context: context,
                              title: "STATUS",
                              desc: "Your slot has been booked",
                              image:
                                  Image.asset("images/27889-3-green-tick.png"),
                              buttons: [
                                DialogButton(
                                  child: Text(
                                    "OKAY",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  onPressed: () => Navigator.pop(context),
                                  color: Color.fromRGBO(0, 179, 134, 1.0),
                                  radius: BorderRadius.circular(0.0),
                                ),
                              ],
                            ).show();
                            counter4++;
                          });
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      NiceButton(
                        radius: 40,
                        padding: const EdgeInsets.all(1),
                        text: "13:30-14:30              $counter5",
                        gradientColors: [secondColor, firstColor],
                        onPressed: () {
                          setState(() {
                            Alert(
                              context: context,
                              title: "STATUS",
                              desc: "Your slot has been booked",
                              image:
                                  Image.asset("images/27889-3-green-tick.png"),
                              buttons: [
                                DialogButton(
                                  child: Text(
                                    "OKAY",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  onPressed: () => Navigator.pop(context),
                                  color: Color.fromRGBO(0, 179, 134, 1.0),
                                  radius: BorderRadius.circular(0.0),
                                ),
                              ],
                            ).show();
                            counter5++;
                          });
                        },
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
    );
  }
}
