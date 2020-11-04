import 'wrapper2.dart';
import 'wrapper.dart';
import 'package:flutter/material.dart';
import 'FadeAnimation.dart';
import 'package:provider/provider.dart';
import 'user.dart';
import 'auth.dart';
import 'package:ArchSearch/app_theme.dart';

class welcome extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<welcome> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff21254A),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 200,
            child: Stack(
              children: <Widget>[
                Positioned(
                    child: FadeAnimation(
                  1,
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/1.png"),
                      ),
                    ),
                  ),
                ))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FadeAnimation(
                  1,
                  Text(
                    "Hello there!",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      letterSpacing: 0.27,
                      color: DesignCourseAppTheme.whitetext,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Image(
                    height: 250,
                    image: AssetImage("images/shopping-fun.png"),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                FadeAnimation(
                  1,
                  Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 60),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromRGBO(49, 39, 79, 1),
                    ),
                    child: Center(
                      child:
                      Column(
                        children: [
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
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                          StreamProvider<User>.value(
                                              value: AuthService().user,
                                              child: Wrapper())));
                                },
                                child:Center(
                                  child: Text(
                                    "Customer",
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
                ),
                SizedBox(
                  height: 20.0,
                ),
                FadeAnimation(
                  1,
                  Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 60),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromRGBO(49, 39, 79, 1),
                    ),
                    child: Center(
                      child:Column(
                        children: [
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
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                          StreamProvider<User>.value(
                                              value: AuthService().user,
                                              child: Wrapper2())));
                                },
                                child:Center(
                                  child: Text(
                                    "Shopkeeper",
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
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
