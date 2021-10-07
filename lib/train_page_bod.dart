import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TrainPage1 extends StatefulWidget {
  const TrainPage1({ Key? key }) : super(key: key);

  @override
  _TrainPage1State createState() => _TrainPage1State();
}

class _TrainPage1State extends State<TrainPage1> {
  @override
  List<String> images=["assets/1.png","assets/2.png"];
  List<String> vals = ["Bodyweight Booster","20 Min Strength"]; 
  Widget build(BuildContext context) {
    return Scaffold(body:
    
    SingleChildScrollView(child: Container(
      padding: EdgeInsets.only(left: 10,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 17.2,),
          Align(alignment: Alignment.center,child: Text("Good Morning, Ajay",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
          Align(alignment:Alignment.center,child: Text("We wish you have a good day",style: TextStyle(fontSize: 16),)),
          SizedBox(height:10,),
          Center(child: Container(width: 100,height: 4,color: Color(0xffC4D552),)),
          SizedBox(height: 10,),
          Text(" Top Pics For You",style: TextStyle(fontSize: 17,color: Color(0xff788386),fontWeight: FontWeight.bold),),
          Text(" We wish you have a good day",style: TextStyle(fontSize: 16),),
          Container(
            height: 300,
            child: ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context,index){return Container(
                padding: EdgeInsets.all(10),
                width: 297,
                child: 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Image.asset("${images[0]}"),SizedBox(height: 5,),
                   Row(
                     children: [
                       Text(" "+"${vals[0]}"),
                       Spacer(),
                       Icon(Icons.headphones,color: Color(0xffC4D552),size: 10,),
                       Text("eng+2")
                     ],
                   ),
                   SizedBox(height: 5,),
                    Row(children: const [
                     Icon(Icons.timer,color: Color(0xffC4D552),),
                     Text("20 mins  "),
                     Icon(Icons.add,color: Color(0xffC4D552),),
                     Text("Full Body"),
                   ],)
                  ],
                )
                );}),
          ),
          Center(child: Container(width:double.infinity,height: 1,color: Color(0xffC4D552),)),
          SizedBox(height: 40,),
          Text(" Body Weight",style: TextStyle(fontSize: 17,color: Color(0xff788386),fontWeight: FontWeight.bold),),
          Text(" When you are short of time",style: TextStyle(fontSize: 16),),
          Container(
            height: 300,
            child: ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context,index){return Container(
                padding: EdgeInsets.all(10),
                width: 297,
                child: 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Image.asset("${images[1]}"),
                   Row(
                     children: [
                       Text(vals[1]),
                       const Icon(Icons.headphones,color: Color(0xffC4D552),size: 10,),
                       const Text("eng+2")
                     ],
                   ),
                   Row(children: const [
                     Icon(Icons.timer,color: Color(0xffC4D552),),
                     Text("20 mins"),
                     Icon(Icons.add,color: Color(0xffC4D552),),
                     Text("Full Body"),
                   ],)
                  ],
                )
                );}),
          )
        ],
      ),
    ),));
  }
}