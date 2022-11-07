import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {


  final List<ChartData> chartData = [
            ChartData('QIB', 28.7),
            ChartData('NIB', 12.2),
            ChartData('Retail', 8.7),
            ChartData('Employee', 5.8),
            ChartData('Others', 2.8)
        ];   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child:
                    SfCircularChart(
                      annotations: <CircularChartAnnotation>[
                         CircularChartAnnotation(
                           widget: Container()
                                ),
                                CircularChartAnnotation(
                                  widget: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                       Text('Share',
                                 style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 0.5), fontSize: 17),
                                ),
                                Text('Offered/Reserved',
                                style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 0.5), fontSize: 17),
                                ),
                                Text('10.60Cr',
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
                                )
                                    ],
                                  ),
                                ),
                                ),
                                   ],
                        series: <CircularSeries>[
                            DoughnutSeries<ChartData, String>(
                                dataSource: chartData,
                                xValueMapper: (ChartData data, _) => data.x,
                                yValueMapper: (ChartData data, _) => data.y,
                                // Radius of doughnut
                                innerRadius: '80%'
                            )
                        ]
            ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                const  SizedBox(
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: const Text('QIB',
                        style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: const Text(
                          '28.7L(64.03%)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                    ],
                  ),
                   Row(
                    children: [
                      Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                const  SizedBox(
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: const Text('NIB',
                        style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: const Text(
                          '12.2L(28.15%)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                    ],
                  ),
                   Row(
                    children: [
                      Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                const  SizedBox(
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: const Text('Retail',
                        style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: const Text(
                          '8.7L(12.89%)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Row(
                    children: [
                      Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                const  SizedBox(
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: const Text('Employee',
                        style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: const Text(
                          '5.8L(9.54%)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                    ],
                  ),
                const  SizedBox(
                    width: 45,
                  ),
                   Row(
                    children: [
                      Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                const  SizedBox(
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: const Text('Others',
                        style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: const Text(
                          '2.8L(5.36%)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                    ],
                  ),
                ],
              ),
            ),
          const  SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
                child: const Text(
                  'Number of Times Subscribed',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          const  SizedBox(
              height: 10,
            ),
            Center(
              // ignore: avoid_unnecessary_containers
              child: Container(
                child: const Text(
                  '(NSE + BSE)',
                  style: TextStyle(color: Colors.grey, fontSize: 17),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    // margin: const EdgeInsets.only(top: 20),
                    child: const Text(
                      "Category",
                      style: TextStyle(color: Colors.grey,fontSize: 13),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: const Text(
                          "Day 1",
                          style: TextStyle(color: Colors.grey,fontSize: 13),
                        ),
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: const Text(
                          "27 Jan 22",
                          style: TextStyle(color: Colors.grey,fontSize: 13),
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: const Text(
                          "Day 2",
                          style: TextStyle(color: Colors.grey,fontSize: 13),
                        ),
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: const Text(
                          "28 Jan 22",
                          style: TextStyle(color: Colors.grey,fontSize: 13),
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: const Text(
                          "Day 3",
                          style: TextStyle(color: Colors.grey,fontSize: 13),
                        ),
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: const Text(
                          "29 Jan 22",
                          style: TextStyle(color: Colors.grey,fontSize: 13),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    // margin: const EdgeInsets.only(top: 20),
                    child: const Text(
                      "QIB",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    child: const Text(
                      "0.30",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    child: const Text(
                      "0.39",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    child: const Text(
                      "5.73",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
              child: Divider(
                color: Colors.grey[150],
                thickness: 5,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    // margin: const EdgeInsets.only(top: 20),
                    child: const Text(
                      "NIB",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    child: const Text(
                      "0.54",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    child: const Text(
                      "0.88",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    child: const Text(
                      "54.30",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
             SizedBox(
              height: 25,
              child: Divider(
                color: Colors.grey[150],
                thickness: 5,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    // margin: const EdgeInsets.only(top: 20),
                    child: const Text(
                      "Retail",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    child: const Text(
                      "0.96",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    child: const Text(
                      "1.85",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    child: const Text(
                      "3.92",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
             SizedBox(
              height: 25,
              child: Divider(
                color: Colors.grey[150],
                thickness: 5,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    // margin: const EdgeInsets.only(top: 20),
                    child: const Text(
                      "Employee",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    child: const Text(
                      "0.05",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    child: const Text(
                      "0.18",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    child: const Text(
                      "0.51",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
              child: Divider(
                color: Colors.grey[150],
                thickness: 5,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    // margin: const EdgeInsets.only(top: 20),
                    child: const Text(
                      "Others",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    child: const Text(
                      "-",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    child: const Text(
                      "-",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    child: const Text(
                      "-",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),  
            SizedBox(
              height: 25,
              child: Divider(
                color: Colors.grey[150],
                thickness: 5,
              ),
            ),
             Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    // margin: const EdgeInsets.only(top: 20),
                    child: const Text(
                      "Total",
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    child: const Text(
                      "0.65",
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    child: const Text(
                      "1.17",
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    child: const Text(
                      "14.89",
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ), 
            const  SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
class ChartData {
  ChartData(
    this.x,
    this.y,
  );
  final String x;
  final double y;
  // final Color color;
}
