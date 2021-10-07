// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:testeee/provider/location_provider.dart';
import 'package:testeee/running.dart';
import 'package:testeee/train_page_bod.dart';


class TrainPage extends StatefulWidget {
  const TrainPage({Key? key}) : super(key: key);

  @override
  _TrainPageState createState() => _TrainPageState();
}

class _TrainPageState extends State<TrainPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          leading: Image.asset("assets/Ellipse31.png"),
          backgroundColor: Colors.white,
          title: Image.asset(
            // ignore: unnecessary_string_escapes
            "assets/Group2294@2x.png", width: 134.9, height: 14.51,
          ),
          centerTitle: true,
          actions: [
                  Image.asset("assets/Iconionic-ios-search.png"),
                  Image.asset("assets/Group2296.png"),
                  //Icon(Icons.notifications_active,color: Color(0xff788386),)
                    ],
           titleSpacing: 10,
          bottom: TabBar(
            tabs: [
              Tab(child : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/Group2274.png"),
                  SizedBox(height: 8,),
                  Text("TRAIN",style: TextStyle(color: Color(0xff788386),fontSize: 13,fontWeight:FontWeight.bold),)
                  
                ],
              ),),
              Tab(child : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/Group2275.png"),
                  SizedBox(height: 8,),
                  Text("MEAL",style: TextStyle(color: Color(0xff788386),fontSize: 13,fontWeight:FontWeight.bold),)
                  
                ],
              ),),
              Tab(child : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/Group2289.png"),
                  SizedBox(height: 8,),
                  Text("YOGA",style: TextStyle(color: Color(0xff788386),fontSize: 13,fontWeight:FontWeight.bold),)
                  
                ],
              ),),
              Tab(child : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/Group2283.png"),
                  const SizedBox(height: 8,),
                  const Text("MIND",style: TextStyle(color: Color(0xff788386),fontSize: 13,fontWeight:FontWeight.bold),)
                  
                ],
              ),),
              Tab(child : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/Path1597.png"),
                  SizedBox(height: 8,),
                  Text("RUN",style: TextStyle(color: Color(0xff788386),fontSize: 13,fontWeight:FontWeight.bold),)
                  
                ],
              ),),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TrainPage1(),
            Scaffold(
              body: Center(
                child: Text("Home"),
              ),
            ),
            Scaffold(
              body: Center(
                child: Text("Home"),
              ),
            ),
            Scaffold(
              body: Center(
                child: Text("Home"),
              ),
            ),
            MultiProvider(providers:
            [
              ChangeNotifierProvider(create: (context) => LocationProvider()
              ,child: Runningmap(),),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false, 
            home: Runningmap(),
            ),
            )
          ],
        ),
      ));
}
