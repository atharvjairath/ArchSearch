import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_scan_bluetooth/flutter_scan_bluetooth.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:ArchSearch/app_theme.dart';

void main() => runApp(new Bluetooth1());

class Bluetooth1 extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<Bluetooth1> {
  int NumUser=0;
  String _data = '';
  bool _scanning = false;
  FlutterScanBluetooth _bluetooth = FlutterScanBluetooth();

  Future Time() async {
    try {
      if(_scanning) {
        await _bluetooth.stopScan();
        debugPrint("scanning stoped");
        setState(() {
          _data = '';
        });
      }
      else {
        await _bluetooth.startScan(pairedDevices: false);
        debugPrint("scanning started");
        setState(() {
          _scanning = true;
        });
      }
    } on PlatformException catch (e) {
      debugPrint(e.toString());
    }
  }
  @override
  void initState() {
    super.initState();
    Time();
    _bluetooth.devices.listen((device) {
      setState(() {
        NumUser++;
        _data += '$NumUser .' + device.name +'\n';
      });
    });
    _bluetooth.scanStopped.listen((device) {
      setState(() {
        _scanning = true;
        _data += '\n';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: (NumUser>=15)?Colors.red : Colors.green,
        appBar: AppBar(
          backgroundColor: (NumUser>=15)?Colors.red : Colors.green,
          title:  Text("ArchTracker"),
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 70.0),
            HeartbeatProgressIndicator(
              child: Icon(Icons.bluetooth_audio,size: 60,),
            ),
            SizedBox(height: 70.0),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 18, right: 16),
              child: Text(
                'Nearby Users $NumUser',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 26,
                  letterSpacing: 0.27,
                  color: DesignCourseAppTheme.whitetext,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(child: Text(
              _data +'\n',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize:18,
                letterSpacing: 0.27,
                color: DesignCourseAppTheme.whitetext,
              ),
            ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
              ),
            )
          ],
        ),
      );
  }
}