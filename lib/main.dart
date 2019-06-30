import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        systemNavigationBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.light));

    return Profile();
  }
}

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  var text_style = TextStyle(color: Colors.white, fontFamily: "Montserrat", fontSize: 15.0,);
  var details = "Steven Paul Jobs was an American business magnate and investor. He was the chairman, CEO, and co-founder of Apple Inc.; chairman and majority shareholder of Pixar; a member of The Walt Disney Company's board of directors following its acquisition of Pixar; and the founder, chairman, and CEO of NeXT.\n\n Jobs is widely recognized as a pioneer of the microcomputer revolution of the 1970s and 1980s, along with Apple co-founder Steve Wozniak.";

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
          child: Stack(
            children: <Widget>[
              Container(
                decoration: new BoxDecoration(
                  color: Colors.black,
                  image: new DecorationImage(image: new AssetImage("images/stevejobs.jpg"), fit: BoxFit.cover, colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.dstATop,)),
                ),
              ),
              ListView(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(left: 10.0, top: 300.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Steve\nJobs", textAlign: TextAlign.start, style: TextStyle(color: Colors.white, fontFamily: "Montserrat", fontSize: 40.0,),),
                          Container(
                              margin: EdgeInsets.only(top: 10.0),
                              child: Text("Cupertino, California", textAlign: TextAlign.start, style: text_style,)
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Expanded(child: Image(image: AssetImage("images/call.png"),)),
                                Expanded(child: Image(image: AssetImage("images/chat.png"),)),
                                Expanded(child: Image(image: AssetImage("images/web.png"),))
                              ],
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 10.0),
                              child: Text(details, textAlign: TextAlign.start, style: text_style,)
                          ),] ,)
                  ),],
              )],
          )),
    );
  }
}
