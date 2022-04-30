import 'package:flutter/material.dart';

import 'sparkline.dart';



class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var data = [-4.0, -3.0, -5.5, -2.0, -3.0, -1.0, 2.0, 1.5, 2.0, -1.0, 3.0];
  var data1 = [
    -0.1,
    -1.60,
    -1.2,
    -1.5,
    -2.0,
    -1.5,
    -3.0,
    -2.6,
    -2.0,
    -3.0,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
                size: 25,
              )),
          actions: [
            Container(
              width: MediaQuery.of(context).size.width-100,
              margin: EdgeInsets.only(right: 45.0, top: 10),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10.0)),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintStyle: TextStyle(fontSize: 12.0),
                    hintText: "Search..."),
              ),
            )
          ],
          title: Text(widget.title),
        ),
        body: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 10.0),
                child: Text(
                  "Treanding today",
                  style: TextStyle(
                      fontSize: 15.0, color: Colors.black.withOpacity(0.8)),
                ),
              ),
              Row(
                children: [
                  Container(
                      height: 30.0,
                      child: Image(image: AssetImage("assets/star.png"))),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    flex: 0,
                    child: Container(
                        height: 30.0,
                        child: Image(image: AssetImage("assets/fb.png"))),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "FB",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0),
                        ),
                        Text(
                          "Meta twitterjhj",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.black, fontSize: 7.0),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 100,
                      height: 40.0,
                      child: Sparkline(
                          data: data,
                          lineWidth: 3,
                          lineColor: Colors.green,
                          averageLine: true,
                          averageLabel: false,
                          useCubicSmoothing: true,
                          cubicSmoothingFactor: 0.21),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "\$330",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(3.0),
                          ),
                          child: Text(
                            "+1.5%",
                            style:
                                TextStyle(fontSize: 8.0, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  Container(
                      height: 30.0,
                      child: Image(image: AssetImage("assets/star.png"))),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    flex: 0,
                    child: Container(
                        height: 30.0,
                        child: Image(image: AssetImage("assets/twitter.png"))),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "TWITTER",
                          maxLines: 1,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0),
                        ),
                        Text(
                          "Twitter meta",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.black, fontSize: 7.0),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 100,
                      height: 40.0,
                      child: Sparkline(
                          data: data1,
                          lineWidth: 3,
                          lineColor: Colors.red,
                          averageLine: true,
                          averageLabel: false,
                          useCubicSmoothing: true,
                          cubicSmoothingFactor: 0.21),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "\$45",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(3.0),
                          ),
                          child: Text(
                            "-1.5%",
                            style:
                                TextStyle(fontSize: 8.0, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  Container(
                      height: 30.0,
                      child: Image(image: AssetImage("assets/star.png"))),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    flex: 0,
                    child: Container(
                        height: 30.0,
                        child: Image(image: AssetImage("assets/fb.png"))),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "FB",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0),
                        ),
                        Text(
                          "Meta meta",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.black, fontSize: 10.0),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 100,
                      height: 40.0,
                      child: Sparkline(
                          data: data,
                          lineWidth: 3,
                          lineColor: Colors.green,
                          averageLine: true,
                          averageLabel: false,
                          useCubicSmoothing: true,
                          cubicSmoothingFactor: 0.21),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "\$330",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(3.0),
                          ),
                          child: Text(
                            "+1.5%",
                            style:
                                TextStyle(fontSize: 8.0, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  Container(
                      height: 30.0,
                      child: Image(image: AssetImage("assets/star.png"))),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    flex: 0,
                    child: Container(
                        height: 30.0,
                        child: Image(image: AssetImage("assets/twitter.png"))),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "TWITTER",
                          maxLines: 1,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0),
                        ),
                        Text(
                          "Twitter meta",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.black, fontSize: 7.0),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 100,
                      height: 40.0,
                      child: Sparkline(
                          data: data1,
                          lineWidth: 3,
                          lineColor: Colors.red,
                          averageLine: true,
                          averageLabel: false,
                          useCubicSmoothing: true,
                          cubicSmoothingFactor: 0.21),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "\$45",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(3.0),
                          ),
                          child: Text(
                            "-1.5%",
                            style:
                                TextStyle(fontSize: 8.0, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                ],
              ),
            
             Padding(
               padding: EdgeInsets.symmetric(horizontal:45.0,vertical: 20.0),
               child: Text("See more...",style: TextStyle(
                 fontSize: 12.0,
                 color: Colors.blue
               ),),
             ),
               Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 10.0),
                child: Text(
                  "History",
                  style: TextStyle(
                      fontSize: 15.0, color: Colors.black.withOpacity(0.8)),
                ),
              ),
            
              Row(
                children: [
                  Container(
                      height: 30.0,
                      child: Image(image: AssetImage("assets/star.png"))),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    flex: 0,
                    child: Container(
                        height: 30.0,
                        child: Image(image: AssetImage("assets/fb.png"))),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "FB",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0),
                        ),
                        Text(
                          "Meta twitterjhj",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.black, fontSize: 7.0),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 100,
                      height: 40.0,
                      child: Sparkline(
                          data: data,
                          lineWidth: 3,
                          lineColor: Colors.green,
                          averageLine: true,
                          useCubicSmoothing: true,
                          cubicSmoothingFactor: 0.21),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "\$330",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(3.0),
                          ),
                          child: Text(
                            "+1.5%",
                            style:
                                TextStyle(fontSize: 8.0, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
                Row(
                children: [
                  Container(
                      height: 30.0,
                      child: Image(image: AssetImage("assets/star.png"))),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    flex: 0,
                    child: Container(
                        height: 30.0,
                        child: Image(image: AssetImage("assets/fb.png"))),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "FB",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0),
                        ),
                        Text(
                          "Meta twitterjhj",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.black, fontSize: 7.0),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 100,
                      height: 40.0,
                      child: Sparkline(
                          data: data,
                          lineWidth: 3,
                          lineColor: Colors.green,
                          averageLine: true,
                          useCubicSmoothing: true,
                          cubicSmoothingFactor: 0.21),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "\$330",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(3.0),
                          ),
                          child: Text(
                            "+1.5%",
                            style:
                                TextStyle(fontSize: 8.0, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
                Row(
                children: [
                  Container(
                      height: 30.0,
                      child: Image(image: AssetImage("assets/star.png"))),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    flex: 0,
                    child: Container(
                        height: 30.0,
                        child: Image(image: AssetImage("assets/fb.png"))),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "FB",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0),
                        ),
                        Text(
                          "Meta twitterjhj",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.black, fontSize: 7.0),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 100,
                      height: 40.0,
                      child: Sparkline(
                          data: data,
                          lineWidth: 3,
                          lineColor: Colors.green,
                          averageLine: true,
                          useCubicSmoothing: true,
                          cubicSmoothingFactor: 0.21),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "\$330",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(3.0),
                          ),
                          child: Text(
                            "+1.5%",
                            style:
                                TextStyle(fontSize: 8.0, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              
             
            ],
          ),
        ));
  }
}
