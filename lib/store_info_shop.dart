import 'package:flutter/material.dart';
import 'app_theme.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:ArchSearch/auth.dart';

FlutterBlue flutterBlueInstance  = FlutterBlue.instance;

class StoreInfo extends StatefulWidget {
  @override
  _CourseInfoScreenState createState() => _CourseInfoScreenState();
}

class _CourseInfoScreenState extends State<StoreInfo>
    with TickerProviderStateMixin {
  final double infoHeight = 364.0;
  final AuthService _auth = AuthService();
  AnimationController animationController;
  Animation<double> animation;
  double opacity1 = 0.0;
  double opacity2 = 0.0;
  double opacity3 = 0.0;
  var firstColor = Color(0xffDA4453), secondColor = Color(0xff89216B);
  int counter1 = 1;
  int counter2 = 15;
  int counter3 = 4;
  int counter4 = 0;
  int counter5 = 4;
  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0, 1.0, curve: Curves.fastOutSlowIn)));
    setData();
    super.initState();
  }
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  void _launchCaller(int number) async {
    var url="tel:${number.toString()}";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not Call $number';
    }
  }

  Future<void> setData() async {
    animationController.forward();
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity1 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity2 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity3 = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double tempHeight = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).size.width / 1.2) +
        24.0;
    return Container(
      color: DesignCourseAppTheme.nearlyWhite,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 1.2,
                  child: Image.asset('assets/design_course/webInterFace.png'),
                ),
              ],
            ),
            Positioned(
              top: (MediaQuery.of(context).size.width / 1.2) - 24.0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: DesignCourseAppTheme.nearlyWhite,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(32.0),
                      topRight: Radius.circular(32.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: DesignCourseAppTheme.grey.withOpacity(0.2),
                        offset: const Offset(1.1, 1.1),
                        blurRadius: 10.0),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: SingleChildScrollView(
                    child: Container(
                      constraints: BoxConstraints(
                          minHeight: infoHeight,
                          maxHeight: tempHeight > infoHeight
                              ? tempHeight
                              : infoHeight),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 32.0, left: 18, right: 16),
                            child: Text(
                              'Bajaj Store',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 22,
                                letterSpacing: 0.27,
                                color: DesignCourseAppTheme.darkerText,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16, right: 16, bottom: 8, top: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Edit Location',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    fontSize: 18,
                                    letterSpacing: 0.27,
                                    color: DesignCourseAppTheme.nearlyBlue,
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        '4.3',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w200,
                                          fontSize: 22,
                                          letterSpacing: 0.27,
                                          color: DesignCourseAppTheme.grey,
                                        ),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: DesignCourseAppTheme.nearlyBlue,
                                        size: 24,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                AnimatedOpacity(
                                  duration: const Duration(milliseconds: 500),
                                  opacity: opacity2,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 3, right: 16, top: 8, bottom: 8),
                                    child: Text(
                                      'East of Kailash, New Delhi',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 16,
                                        letterSpacing: 0.27,
                                        color: DesignCourseAppTheme.grey,
                                      ),
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                                AnimatedOpacity(
                                  duration: const Duration(milliseconds: 500),
                                  opacity: opacity1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Row(
                                      children: <Widget>[
                                      ],
                                    ),

                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Time                         Slots Booked',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    fontSize: 18,
                                    letterSpacing: 0.27,
                                    color: DesignCourseAppTheme.grey,
                                  ),
                                ),
                                RaisedButton(
                                  padding: const EdgeInsets.all(1),
                                  color: (counter1==15)? Colors.grey[100] :DesignCourseAppTheme.nearlyWhite,
                                  elevation: 1,
                                  child: Text("9:30-10:30am                           $counter1",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      letterSpacing: 0.27,

                                      color:(counter1==15)? Colors.red :DesignCourseAppTheme.nearlyBlue,
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (counter1==15){
                                        Alert(
                                          context: context,
                                          title: "STATUS",
                                          desc: "Maximum Slot Limit Reached!",
                                          image:
                                          Image.asset("images/false.png"),
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
                                      }
                                      else {
                                        Alert(
                                          context: context,
                                          title: "STATUS",
                                          desc: "Your slot has been booked",
                                          image:
                                          Image.asset(
                                              "images/27889-3-green-tick.png"),
                                          buttons: [
                                            DialogButton(
                                              child: Text(
                                                "OKAY",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                              color: Color.fromRGBO(
                                                  0, 179, 134, 1.0),
                                              radius: BorderRadius.circular(
                                                  0.0),
                                            ),
                                          ],
                                        ).show();
                                        counter1++;
                                      }
                                    });
                                  },
                                ),
                                RaisedButton(
                                  padding: const EdgeInsets.all(1),
                                  color: (counter2==15)? Colors.grey[100] :DesignCourseAppTheme.nearlyWhite,
                                  elevation: 1,
                                  child: Text("10:30-11:30am                         $counter2",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      letterSpacing: 0.27,
                                      color:(counter2==15)? Colors.red :DesignCourseAppTheme.nearlyBlue,
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (counter2==15){
                                        Alert(
                                          context: context,
                                          title: "STATUS",
                                          desc: "Maximum Slot Limit Reached!",
                                          image:
                                          Image.asset("images/false.png"),
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
                                      }
                                      else {
                                        Alert(
                                          context: context,
                                          title: "STATUS",
                                          desc: "Your slot has been booked",
                                          image:
                                          Image.asset(
                                              "images/27889-3-green-tick.png"),
                                          buttons: [
                                            DialogButton(
                                              child: Text(
                                                "OKAY",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                              color: Color.fromRGBO(
                                                  0, 179, 134, 1.0),
                                              radius: BorderRadius.circular(
                                                  0.0),
                                            ),
                                          ],
                                        ).show();
                                        counter2++;
                                      }
                                    });
                                  },
                                ),
                                RaisedButton(
                                  padding: const EdgeInsets.all(1),
                                  color: (counter3==15)? Colors.grey[100] :DesignCourseAppTheme.nearlyWhite,
                                  elevation: 1,
                                  child: Text("11:30-12:30pm                         $counter3",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      letterSpacing: 0.27,
                                      color:(counter3==15)? Colors.red :DesignCourseAppTheme.nearlyBlue,
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (counter3==15){
                                        Alert(
                                          context: context,
                                          title: "STATUS",
                                          desc: "Maximum Slot Limit Reached!",
                                          image:
                                          Image.asset("images/false.png"),
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
                                      }
                                      else {
                                        Alert(
                                          context: context,
                                          title: "STATUS",
                                          desc: "Your slot has been booked",
                                          image:
                                          Image.asset(
                                              "images/27889-3-green-tick.png"),
                                          buttons: [
                                            DialogButton(
                                              child: Text(
                                                "OKAY",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                              color: Color.fromRGBO(
                                                  0, 179, 134, 1.0),
                                              radius: BorderRadius.circular(
                                                  0.0),
                                            ),
                                          ],
                                        ).show();
                                        counter3++;
                                      }
                                    });
                                  },
                                ),
                                RaisedButton(
                                  padding: const EdgeInsets.all(1),
                                  color: (counter4==15)? Colors.grey[100] :DesignCourseAppTheme.nearlyWhite,
                                  elevation: 1,
                                  child: Text("12:30-1:30pm                           $counter4",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      letterSpacing: 0.27,
                                      color:(counter4==15)? Colors.red :DesignCourseAppTheme.nearlyBlue,
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (counter4==15){
                                        Alert(
                                          context: context,
                                          title: "STATUS",
                                          desc: "Maximum Slot Limit Reached!",
                                          image:
                                          Image.asset("images/false.png"),
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
                                      }
                                      else {
                                        Alert(
                                          context: context,
                                          title: "STATUS",
                                          desc: "Your slot has been booked",
                                          image:
                                          Image.asset(
                                              "images/27889-3-green-tick.png"),
                                          buttons: [
                                            DialogButton(
                                              child: Text(
                                                "OKAY",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                              color: Color.fromRGBO(
                                                  0, 179, 134, 1.0),
                                              radius: BorderRadius.circular(
                                                  0.0),
                                            ),
                                          ],
                                        ).show();
                                        counter4++;
                                      }
                                    });
                                  },
                                ),
                              ],

                            ),
                          ),
                          AnimatedOpacity(
                            duration: const Duration(milliseconds: 500),
                            opacity: opacity3,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, bottom: 16, right: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                    child:
                                    Container(
                                      height: 48,
                                      decoration: BoxDecoration(
                                        color: DesignCourseAppTheme.nearlyBlue,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(16.0),
                                        ),
                                        boxShadow: <BoxShadow>[
                                          BoxShadow(
                                              color: DesignCourseAppTheme
                                                  .nearlyBlue
                                                  .withOpacity(0.5),
                                              offset: const Offset(1.1, 1.1),
                                              blurRadius: 10.0),
                                        ],
                                      ),
                                      child: FlatButton(
                                        onPressed: () {
                                          _launchURL("https://www.google.com/maps/place/Bajaj+Fancy+Store/@28.570227,77.2402223,17z/data=!3m1!4b1!4m5!3m4!1s0x390ce3ad138b3c85:0x884152e4732f0093!8m2!3d28.570227!4d77.242411");
                                        },
                                        child:Center(
                                          child: Text(
                                            'Edit Slot',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18,
                                              letterSpacing: 0.0,
                                              color: DesignCourseAppTheme
                                                  .nearlyWhite,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).padding.bottom,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: (MediaQuery.of(context).size.width / 1.2) - 24.0 - 35,
              right: 35,
              child: ScaleTransition(
                alignment: Alignment.center,
                scale: CurvedAnimation(
                    parent: animationController, curve: Curves.fastOutSlowIn),
                child: Card(
                  color: DesignCourseAppTheme.nearlyBlue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  elevation: 10.0,
                  child: Container(
                    width: 60,
                    height: 60,
                    child:Center(
                      child: IconButton(
                        icon: Icon(Icons.create),
                        iconSize: 28,
                        onPressed: () {
                          _launchCaller(9650086966);
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: SizedBox(
                width: AppBar().preferredSize.height,
                height: AppBar().preferredSize.height,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius:
                    BorderRadius.circular(AppBar().preferredSize.height),
                    child: Icon(
                      Icons.logout,
                      color: DesignCourseAppTheme.nearlyBlack,
                    ),
                    onTap: () async {
                      await _auth.signOut();
                    }
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getTimeBoxUI(String text1, String txt2) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: DesignCourseAppTheme.nearlyWhite,
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: DesignCourseAppTheme.grey.withOpacity(0.2),
                offset: const Offset(1.1, 1.1),
                blurRadius: 8.0),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              left: 18.0, right: 18.0, top: 12.0, bottom: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                text1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  letterSpacing: 0.27,
                  color: DesignCourseAppTheme.nearlyBlue,
                ),
              ),
              Text(
                txt2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 14,
                  letterSpacing: 0.27,
                  color: DesignCourseAppTheme.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
