import 'package:animation_samples/model/colors_class.dart';
import 'package:animation_samples/model/icons_class.dart';
import 'package:animation_samples/model/titles_class.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> with TickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;
  _drawerMenu() {
    if (animation.value == 0) {
      animationController.forward(from: 0.0);
    } else {
      animationController.reverse(from: 1.0);
    }
  }

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000), value: 0.0);
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeInOut)
          ..addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(color: Colors.white),
          Transform(
            alignment: FractionalOffset.center,
            transform:
                Matrix4.translationValues(30.0 * animation.value, 0.0, 0.0)
                  ..scale(1.0 - (0.1 * animation.value)),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 80.0,
                ),
                Container(
                  height: size.height - 80,
                  color: Colors.grey[300],
                  child: DrawerMenu(),
                )
              ],
            ),
          ),
          Transform(
            alignment: FractionalOffset.center,
            transform:
                Matrix4.translationValues(200 * animation.value, 0.0, 0.0)
                  ..scale(1.0 - (0.2 * animation.value)),
            child: Stack(
              children: [
                Container(
                    width: size.width,
                    height: size.height - 100,
                    color: Colors.blue),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 80,
                      ),
                      Container(
                          width: size.width,
                          height: size.height - 80,
                          color: Colors.orange,
                          child: _boxsDetails(context)),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    IconButton(
                      icon: AnimatedIcon(
                          icon: AnimatedIcons.menu_arrow,
                          color: Colors.black,
                          progress: animation),
                      onPressed: _drawerMenu,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

//DrawerDetail
  DrawerMenu() {
    return Stack(
      children: <Widget>[
        Container(
            height: 100,
            width: 250,
            color: Colors.blue[200],
            child: _drawerLogo(context)),
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Card(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  onTap: () {
                    // animationController.reverse(from: 1.0);
                  },
                  title: Text(
                    drawertitle[index].menuname,
                    style: TextStyle(fontSize: 18.0),
                  ),
                  leading: Icon(leadingicons[index].leadingname),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

_drawerLogo(BuildContext context) {
  return Stack(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 65),
        child: Container(
          width: 80,
          height: 80,
          child: Positioned.fill(
              child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/logo.png'))),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 82, left: 70),
        child: Text(
          'បណ្ណាគារជ័យ',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ],
  );
}

//pages

_boxsDetails(BuildContext context) {
  int index = 0;
  Size size = MediaQuery.of(context).size;
  return DefaultTabController(
    length: 5,
    child: Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            Card(
              child: Container(
                  width: size.width,
                  height: 100,
                  // color: Colors.orange,
                  child: _boxPages(context)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                  width: size.width,
                  height: size.height - 188,
                  child: _tabbarDetail(context)),
            )
          ],
        ),
      ],
    ),
  );
}

_tabbarDetail(BuildContext context) {
  return DefaultTabController(
    length: 5,
    child: TabBarView(
      children: [
        Container(color: Colors.yellow),
        Container(color: Colors.red),
        Container(color: Colors.blue),
        Container(color: Colors.cyan),
        Container(color: Colors.green)
      ],
    ),
  );
}

_boxPages(BuildContext context) {
  PageController pageController =
      PageController(initialPage: 0, viewportFraction: 0.8);
  return Stack(
    children: <Widget>[
      DefaultTabController(
        length: 6,
        child: ListView.builder(
          controller: pageController,
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Container(
                    width: 80,
                    height: 80,
                    color: colors[index].colorname,
                    child: _detailBoxPages(context, index),
                  ),
                ),
              ],
            );
          },
        ),
      )
    ],
  );
}

_detailBoxPages(BuildContext context, int index) {
  return Stack(
    children: <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  print('3');
                },
                child: Container(
                    width: 60,
                    height: 60,
                    child: Icon(
                      icons[index].iconsname,
                      color: Colors.white,
                    )),
              )),
        ],
      )
    ],
  );
}
