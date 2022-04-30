import 'package:flutter/material.dart';
import 'package:stock_ui/sparkline.dart';

class StockPage extends StatefulWidget {
  const StockPage({Key? key}) : super(key: key);

  @override
  State<StockPage> createState() => _StockPageState();
}

class _StockPageState extends State<StockPage> {
  var data = [-4.0, -3.0, -5.5, -2.0, -3.0, -1.0, 2.0, 1.5, 2.0, -1.0, 3.0];
  List<String> timeData = ["1D", "1W", "1M", "6M", "1Y", "MAX"];
  int selectTabIndex = 0;
  int selectTimeIndex=0;
  List<String> tabBarList = ["DETAILS", "INFO", "SOCIAL"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                  size: 30.0,
                ),
                const Spacer(
                  flex: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: [
                      const Text(
                        "FB",
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Meta Platform, \n Inc",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.4),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                const Image(
                  image: AssetImage("assets/star.png"),
                  height: 30,
                  width: 30,
                ),
                const SizedBox(
                  width: 15.0,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const Icon(Icons.notifications_none,
                        color: Colors.black, size: 30),
                    Positioned(
                        top: 1,
                        right: 5,
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
            Row(
              children: [
                const Image(
                  image: AssetImage("assets/fb.png"),
                  height: 40,
                  width: 40.0,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          "FB",
                          style: TextStyle(
                              color: Colors.lightBlue,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Text(
                        "\$330",
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                const Text(
                  "+(0.02%)",
                  style: TextStyle(color: Colors.green, fontSize: 16.0),
                ),
                const SizedBox(
                  width: 15.0,
                ),
                const Text(
                  "+\$29.94",
                  style: TextStyle(color: Colors.green, fontSize: 16.0),
                ),
                const SizedBox(
                  width: 15.0,
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: Sparkline(
                  data: data,
                  lineWidth: 10,
                  lineColor: Colors.green,
                  averageLine: true,
                  averageLabel: false,
                  useCubicSmoothing: true,
                  cubicSmoothingFactor: 0.21),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  Divider(
                    color: Colors.black.withOpacity(0.5),
                    thickness: 1.0,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: timeData.map((e) {
                      int index=timeData.indexOf(e);
                      return Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              selectTimeIndex=index;
                            });
                          },
                          child: Container(
                            height: 30,
                            alignment: Alignment.center,
                            width: 70,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                                color: (selectTimeIndex==index)?Colors.lightBlue:Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(2.0)),
                            child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  e,
                                  style:  TextStyle(
                                      fontSize: 16.0, color: (selectTimeIndex==index)?Colors.white:Colors.lightBlue,)
                                )),
                          ),
                        ),
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                children: [
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectTabIndex = 0;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        decoration: BoxDecoration(
                            color:
                                (selectTabIndex == 0) ? Colors.lightBlue : null,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: FittedBox(
                          fit: BoxFit.none,
                          child: Text(
                            "DETAILS",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: (selectTabIndex == 0)
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectTabIndex = 1;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        decoration: BoxDecoration(
                            color:
                                (selectTabIndex == 1) ? Colors.lightBlue : null,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: FittedBox(
                          child: Text(
                            "INFO",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: (selectTabIndex == 1)
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectTabIndex = 2;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        decoration: BoxDecoration(
                            color:
                                (selectTabIndex == 2) ? Colors.lightBlue : null,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: FittedBox(
                          child: Text(
                            "SOCIAL",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: (selectTabIndex == 2)
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            (selectTabIndex == 0)
                ? Flexible(
                    flex: 2,
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Overview",
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.white),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    flex: 2,
                                    child: Row(
                                      children: const [
                                        Expanded(
                                          child: Text(
                                            "Prev Close",
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                color: Colors.white),
                                          ),
                                        ),
                                        Text(
                                          "1.90",
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30.0,
                                  ),
                                  Flexible(
                                    flex: 2,
                                    child: Row(
                                      children: const [
                                        Expanded(
                                          child: Text(
                                            "Market cap",
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                color: Colors.white),
                                          ),
                                        ),
                                        Text(
                                          "1.90",
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    flex: 2,
                                    child: Row(
                                      children: const [
                                        Expanded(
                                          child: Text(
                                            "Open",
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                color: Colors.white),
                                          ),
                                        ),
                                        Text(
                                          "1.90",
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30.0,
                                  ),
                                  Flexible(
                                    flex: 2,
                                    child: Row(
                                      children: const [
                                        Expanded(
                                          child: Text(
                                            "P/E",
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                color: Colors.white),
                                          ),
                                        ),
                                        Text(
                                          "1.90",
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    flex: 2,
                                    child: Row(
                                      children: const [
                                        Expanded(
                                          child: Text(
                                            "Beta",
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                color: Colors.white),
                                          ),
                                        ),
                                        Text(
                                          "1.90",
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30.0,
                                  ),
                                  Flexible(
                                    flex: 2,
                                    child: Row(
                                      children: const [
                                        Expanded(
                                          child: Text(
                                            "Dividend date",
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                color: Colors.white),
                                          ),
                                        ),
                                        Text(
                                          "1.90",
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    flex: 2,
                                    child: Row(
                                      children: const [
                                        Expanded(
                                          child: Text(
                                            "Volume",
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                color: Colors.white),
                                          ),
                                        ),
                                        Text(
                                          "1.90",
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30.0,
                                  ),
                                  Flexible(
                                    flex: 2,
                                    child: Row(
                                      children: const [
                                        Expanded(
                                          child: Text(
                                            "Earnings date",
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                color: Colors.white),
                                          ),
                                        ),
                                        Text(
                                          "1.90",
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    flex: 2,
                                    child: Row(
                                      children: const [
                                        Expanded(
                                          child: Text(
                                            "Avg Volume",
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                color: Colors.white),
                                          ),
                                        ),
                                        Text(
                                          "1.90",
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30.0,
                                  ),
                                  Flexible(
                                    flex: 2,
                                    child: Row(
                                      children: const [
                                        Expanded(
                                          child: Text(
                                            "",
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                color: Colors.white),
                                          ),
                                        ),
                                        Text(
                                          "",
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                : (selectTabIndex == 1)
                    ? Flexible(
                        flex: 2,
                        child: Container(
                          height: 270,
                          padding: const EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Company Profile",
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.white),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              const Text(
                                "Meta Platform, Inc.",
                                style: TextStyle(
                                    fontSize: 14.0, color: Colors.white),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Sector(s): ",
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white.withOpacity(0.8)),
                                  ),
                                  const SizedBox(
                                    width: 15.0,
                                  ),
                                  const Text(
                                    "Company sector",
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.white),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Industry:   ",
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white.withOpacity(0.8)),
                                  ),
                                  const SizedBox(
                                    width: 15.0,
                                  ),
                                  const Text(
                                    "Company sector",
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.white),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Number of employees:   ",
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white.withOpacity(0.8)),
                                  ),
                                  const SizedBox(
                                    width: 15.0,
                                  ),
                                  const Text(
                                    "5000",
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.white),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              const Text(
                                "Description",
                                style: TextStyle(
                                    fontSize: 18.0, color: Colors.white),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Flexible(
                                child: Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                                  maxLines: 4,
                                  style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 14.0,
                                      color: Colors.white.withOpacity(0.8)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    : Flexible(
                        flex: 2,
                        child: Column(
                          children: [
                            Container(
                              height: 200,
                              padding: const EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(15.0)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Check your friends activity",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  const SizedBox(
                                    height: 15.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      const Flexible(
                                        child: Image(
                                          image:
                                              AssetImage("assets/avtar3.png"),
                                          height: 60,
                                          width: 80.0,
                                        ),
                                      ),
                                      const Text(
                                        "Username",
                                        style: TextStyle(fontSize: 14.0),
                                      ),
                                      Column(
                                        children: const [
                                          Text(
                                            "Followed at",
                                            style: TextStyle(fontSize: 14.0),
                                          ),
                                          SizedBox(
                                            height: 25.0,
                                          ),
                                          Text(
                                            "\$290",
                                            style: TextStyle(fontSize: 14.0),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: const [
                                          Text(
                                            "P/L since",
                                            style: TextStyle(fontSize: 14.0),
                                          ),
                                          SizedBox(
                                            height: 25.0,
                                          ),
                                          Text(
                                            "\$40 (15%)",
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                color: Colors.green),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 15.0,
                                  ),
                                  const Flexible(
                                    child: Image(
                                      image: AssetImage("assets/avtar3.png"),
                                      height: 60,
                                      width: 80.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            SizedBox(
                              height: 40.0,
                              width: 250,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.lightBlue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          20), // <-- Radius
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        "Share with a friend",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.white),
                                      ),
                                      Icon(
                                        Icons.share,
                                        size: 25.0,
                                        color: Colors.white,
                                      )
                                    ],
                                  )),
                            )
                          ],
                        ),
                      ),
          ],
        ),
      )),
    );
  }
}
