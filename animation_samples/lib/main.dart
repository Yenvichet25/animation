import 'package:animation_samples/pages/secondpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Image background
          Positioned.fill(
              child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/bgmain.jpg"))),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //LoginPage
              _loginAccount(context)
            ],
          ),
        ],
      ),
    );
  }
}

_loginAccount(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Stack(
    children: [
      Align(
          alignment: Alignment.topCenter,
          child: Container(
              width: size.width * 0.8,
              height: size.height * 0.55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white.withOpacity(0.6),
              ),
              child: _logoDetail(context))),
    ],
  );
}

_logoDetail(BuildContext context) {
  return Stack(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: Align(
            alignment: Alignment.topCenter,
            child: Container(width: 125, height: 125, decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/logo.png'))
            ),)),
      ),
      _detailAccount(context)
    ],
  );
}

_detailAccount(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        //Account
        Padding(
          padding: const EdgeInsets.only(top: 140),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              width: size.width,
              height: 50,
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(blurRadius: 0.8)],
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'ឈ្មោះគណនី​ ឬ អ៊ីមែល'),
              ),
            ),
          ),
        ),
        //Password
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            width: size.width,
            height: 50,
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(blurRadius: 0.8)],
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.white),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'លេខសម្ងាត់'),
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: _login(context)),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _createPassword(context),
                SizedBox(width: 10),
                _createAccount(context)
              ],
            ))
      ],
    ),
  );
}

_login(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 5),
    width: size.width,
    height: 50,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0), color: Colors.orange),
    child: Align(
        alignment: Alignment.center,
        child: InkWell(
          onTap: () {
           Navigator.push(context, MaterialPageRoute(builder: (_)=>SecondPage()));
          },
          child: Text(
            "ចូលគណនី",
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
                color: Colors.white),
          ),
        )),
  );
}

_createPassword(BuildContext context) {
  return InkWell(
      onTap: () {
        print('1');
      },
      child: Text("ភ្លេចលេខសម្ងាត់", style: TextStyle(color: Colors.black)));
}

_createAccount(BuildContext context) {
  return InkWell(
      onTap: () {
        print('2');
      },
      child: Text("បង្កើតគណនីថ្មី", style: TextStyle(color: Colors.black)));
}
