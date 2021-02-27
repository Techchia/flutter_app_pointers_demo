import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Pointer Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          child: Listener(
              onPointerDown:(PointerDownEvent event){
                print("Clicked");
              },
              onPointerMove: (PointerMoveEvent event){
                print(event);
              },
              onPointerUp: (PointerUpEvent event){
                print(event);
              },
              onPointerCancel: (PointerCancelEvent event){
                print(event);
              },
              onPointerHover: (PointerHoverEvent event){
                print(event);
              },
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHcQ642MVfFbT6FWpCEzEy2ykt67MPza8vRQ&usqp=CAU"),
          ),
        )
      ),
    );
  }
}
