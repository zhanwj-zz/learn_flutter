import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth/auth_strings.dart';

class AuthPage extends StatefulWidget {
  AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  LocalAuthentication localAuth = LocalAuthentication();
  @override
  void dispose() {
    super.dispose();
    localAuth.stopAuthentication();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("指纹识别认证演示"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                child: Text("检查是否支持生物识别"),
                onPressed: () async {
                  try {
                    bool canCheckBiometrics =
                        await localAuth.canCheckBiometrics;
                    print(canCheckBiometrics);
                  } catch (e) {
                    print(e);
                  }
                },
              ),
              SizedBox(height: 30),
              ElevatedButton(
                child: Text("获取生物识别技术列表"),
                onPressed: () async {
                  try {
                    List<BiometricType> availableBiometrics =
                        await localAuth.getAvailableBiometrics();
                    print(availableBiometrics);
                  } catch (e) {
                    print(e);
                  }
                },
              ),
              SizedBox(height: 30),
              ElevatedButton(
                child: Text("指纹/生物识别"),
                onPressed: () async {
                  const andStrings = const AndroidAuthMessages(
                      cancelButton: '取消',
                      goToSettingsButton: '去设置',
                      fingerprintNotRecognized: '指纹识别失败',
                      goToSettingsDescription: '请设置指纹.',
                      fingerprintHint: '指纹',
                      fingerprintSuccess: '指纹识别成功',
                      signInTitle: '指纹验证',
                      fingerprintRequiredTitle: '请先录入指纹!',
                  );
                  try {
                      bool didAuthenticate = await localAuth.authenticateWithBiometrics(
                          localizedReason: '扫描指纹进行身份识别',
                          useErrorDialogs: false,
                          stickyAuth: true,
                          androidAuthStrings: andStrings
                      );
                      print(didAuthenticate);
                  } catch (e) {
                      print(e);
                  }
                },
              )
            ],
          ),
        ));
  }
}
