import 'package:flutter/material.dart';
import 'package:device_info/device_info.dart';

class DevicePage extends StatefulWidget {
  DevicePage({Key? key}) : super(key: key);

  _DevicePageState createState() => _DevicePageState();
}

class _DevicePageState extends State<DevicePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._getDevice();
  }
  _getDevice() async{
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    print('设备号 ${androidInfo.androidId}');  // e.g. "Moto G (4)"
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Native Device演示"),
      ),
      body: Text("看控制台 信息已经打印到控制台了"),
    );
  }
}