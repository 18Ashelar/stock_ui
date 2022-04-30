import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_ui/sparkline.dart';
import 'package:stock_ui/stock_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var data = [-4.0, -3.0, -5.5, -2.0, -3.0, -1.0, 2.0, 1.5, 2.0, -1.0, 3.0];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F7F7),
      appBar: AppBar(
        backgroundColor: Color(0xFFF7F7F7),
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          iconSize: 25.0, // set your color here
          onPressed: () {},
        ),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder:(context){
                  return const StockPage();

                }));
              },
              icon: const Icon(
                Icons.search,
                color: Colors.black,
                size: 25,
              )),
          Stack(
            clipBehavior: Clip.none,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_none,
                      color: Colors.black, size: 25)),
              Positioned(
                  top: 12,
                  right: 15,
                  child: Container(
                    height: 8,
                    width: 8,
                    decoration: const BoxDecoration(
                        color: Colors.lightBlue, shape: BoxShape.circle),
                  ))
            ],
          ),
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
             const SizedBox(
              height: 5.0,
            ),
            Stack(
              children: [
                //  RotationTransition(
                //    alignment: Alignment.topRight,
                //  turns: const AlwaysStoppedAnimation(5/ 360),
                //    child: Container(

                //         height: 170,

                //         decoration: const BoxDecoration(

                //             color: Colors.lightBlue,
                //             borderRadius: BorderRadius.all(Radius.circular(20.0))),
                //    ),
                //  ),

                Positioned(
                  // bottom: 0.0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 15.0),
                    height: 150,
                    width: MediaQuery.of(context).size.width - 10,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Portfolio",
                          style: TextStyle(color: Colors.white, fontSize: 14.0),
                        ),
                        const Text(
                          "\$15,000",
                          style: TextStyle(color: Colors.white, fontSize: 22.0),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Flexible(
                              child: Text(
                                "Today's gain",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14.0),
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Flexible(
                              child: Text(
                                "+0.02%",
                                style: TextStyle(
                                    color: Colors.green, fontSize: 14.0),
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Flexible(
                              child: Text(
                                "\$29.94",
                                style: TextStyle(
                                    color: Colors.green, fontSize: 14.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              "Total gain",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 14.0),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              "+0.02%",
                              style: TextStyle(
                                  color: Colors.green, fontSize: 14.0),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              "\$29.94",
                              style: TextStyle(
                                  color: Colors.green, fontSize: 14.0),
                            ),
                            Spacer(),
                            Expanded(
                                child: Icon(
                              Icons.visibility,
                              color: Colors.lightBlue,
                              size: 25.0,
                            ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: -10,
                    right: 30.0,
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      alignment: Alignment.bottomCenter,
                      height: 50.0,
                      width: 35,
                      decoration: const BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(45),
                          bottomRight: Radius.circular(45),
                        ),
                      ),
                      child: const Icon(
                        Icons.refresh,
                        color: Colors.white,
                        size: 30,
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              height: 180,
              padding: const EdgeInsets.symmetric(
                  horizontal: 10.0, vertical: 15.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 15.0),
                        decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(20.0)),
                        child:const  FittedBox(
                          child: Text(
                            "Trending",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 15.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0)),
                        child:  const FittedBox(
                          child: Text(
                            "Markerts",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                     const FittedBox(
                        child:  Text(
                          "See all",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15.0,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Flexible(
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Container(
                            margin:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            height: 100,
                            width: 145,
                            padding: const EdgeInsets.all(10.0),
                            alignment: Alignment.topRight,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(8.0)),
                            child: const Icon(
                              Icons.star_border_rounded,
                              size: 30.0,
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Flexible(
              flex: 4,
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 15.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 15.0),
                          decoration: BoxDecoration(
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: const FittedBox(
                            child:  Text(
                              "Watchlists",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 15.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: const FittedBox(
                            child:  Text(
                              "Portfolio",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                       const FittedBox(
                          child:  Icon(
                            Icons.more_horiz,
                            size: 30.0,
                          ),
                        ),
                        const SizedBox(
                          width: 15.0,
                        )
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, indeex) {
                            return Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  border: Border.all(color: Colors.black12)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                 const FittedBox(
                                    child:  Text(
                                      "Tech With Friends",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 5.0,
                                                      horizontal: 7.0),
                                              decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                              child: const Text(
                                                "+1.5%",
                                                style: TextStyle(
                                                    fontSize: 16.0,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 5.0,
                                            ),
                                            Container(
                                              width: 70,
                                              height: 20.0,
                                              child: Sparkline(
                                                  data: data,
                                                  lineWidth: 3,
                                                  lineColor: Colors.green,
                                                  averageLine: true,
                                                  averageLabel: false,
                                                  useCubicSmoothing: true,
                                                  cubicSmoothingFactor: 0.21),
                                            ),
                                          ],
                                        ),
                                        const Spacer(),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: const [
                                                Image(
                                                  height: 25.0,
                                                  width: 25.0,
                                                  image: AssetImage(
                                                      "assets/avtar1.png"),
                                                ),
                                                SizedBox(
                                                  width: 8.0,
                                                ),
                                                Image(
                                                  height: 25.0,
                                                  width: 25.0,
                                                  image: AssetImage(
                                                      "assets/avtar1.png"),
                                                ),
                                                SizedBox(
                                                  width: 8.0,
                                                ),
                                                Icon(
                                                  Icons.add,
                                                  size: 20.0,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 5.0,
                                            ),
                                            const Text(
                                              "5 Participants",
                                              style: TextStyle(
                                                fontSize: 10.0,
                                              ),
                                            )
                                          ],
                                        ),
                                        const Spacer(),
                                        const Icon(
                                          Icons.keyboard_arrow_down_outlined,
                                          size: 20.0,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
      drawer: const Drawer(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: ' ',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: ' ',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_rounded),
                label: ' ',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.trending_up_outlined),
                label: ' ',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: ' ',
              ),
            ],
            selectedIconTheme: const IconThemeData(
              color: Colors.lightBlue,
            ),
            unselectedIconTheme: const IconThemeData(
              color: Colors.black,
            ),
            iconSize: 35.0,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: _selectedIndex,
            backgroundColor: Colors.white,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}