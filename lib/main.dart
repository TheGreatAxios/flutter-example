import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => MyHomePageState();
}

class Hello {
  String world;

  Hello({
    this.world = "World"
  });
}

class MyHomePageState extends State<MyHomePage> {

  int counter = 0;
  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    MediaQueryData mq = MediaQuery.of(context);

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: Text("$counter"),
      ),
      body: Container(
        width: mq.size.width,
        color: Theme.of(context).primaryColorDark,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Click the button to add 1"),
            ElevatedButton(
              onPressed: () => setState(() => counter++),
              child: Text("Counter"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => PageTwo())),
              child: Text("BUTTON"),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          onItemSelected: (index) {
            setState(() => _currentIndex = index);
            _pageController.jumpToPage(index);
          },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              title: Text('Item One'),
              icon: Icon(Icons.home)
          ),
          BottomNavyBarItem(
              title: Text('Item Two'),
              icon: Icon(Icons.apps)
          ),
          BottomNavyBarItem(
              title: Text('Item Three'),
              icon: Icon(Icons.chat_bubble)
          ),
          BottomNavyBarItem(
              title: Text('Item Four'),
              icon: Icon(Icons.settings)
          ),
        ]
      ),
    );
  }
}

class PageTwo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {




    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(CupertinoIcons.airplane),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Page Two"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.75,
        color: Colors.yellow,
        child: ListView(
          children: <Widget>[
            Text("ABC"),
            Text("ABC"),Text("ABC"),Text("ABC"),Text("ABC"),Text("ABC"),Text("ABC"),Text("ABC"),Text("ABC"),Text("ABC"),Text("ABC"),Text("ABC"),Text("ABC"),Text("ABC"),Text("ABC"),Text("ABC"),Text("ABC"),Text("ABC"),Text("ABC"),Text("ABC"),Text("ABC"),Text("ABC"),Text("ABC"),Text("ABC"),Text("ABC"),Text("ABC"),Text("ABC"),

          ]
        )
      )
    );
  }
}
