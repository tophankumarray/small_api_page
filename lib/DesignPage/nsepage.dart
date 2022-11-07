import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class NsePage extends StatefulWidget {
  String? name, dataName, price, percentage, value;

  NsePage(
      {@required this.name,
      @required this.dataName,
      @required this.percentage, //! time
      @required this.price, //! required
      @required this.value,
      });

  @override
  State<NsePage> createState() => _NsePageState();
}

class _NsePageState extends State<NsePage> {
  late List<ChartData> data;
  // late TooltipBehavior _tooltip;

 late  List <String> timeSplit;

  @override
  void initState() {
   
    // _tooltip = TooltipBehavior(enable: true);
    super.initState();

    timeSplit = widget.price!.split('-'); 
    
  }

  @override
  Widget build(BuildContext context) {
    List<ChartData> chartData = [
      // ChartData(),
      // ChartData(DateTime(0, 0, 0, int.parse(timeSplit[0]),int.parse(timeSplit[1])), double.parse(widget.price!)),
      ChartData(DateTime(0, 0, 0, 15, 20), 1.08),
      // ChartData(DateTime(0, 0, 0, 18, 40), 1.12),
     
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 50,
                child: Text(
                  maxLines: 1,
                  widget.name!,
                  style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  height: 100,
                  width: 100,
                  child: chartData.length == 1
                      ? SfCartesianChart(
                          primaryYAxis: CategoryAxis(isVisible: false),
                          primaryXAxis: DateTimeAxis(
                              intervalType: DateTimeIntervalType.hours,isVisible: false),
                          series: <ChartSeries>[
                            ScatterSeries<ChartData, DateTime>(
                              dataSource: chartData,
                              xValueMapper: (ChartData data, _) => data.x,
                              yValueMapper: (ChartData data, _) => data.y,
                              markerSettings: const MarkerSettings(
                                  height: 5,
                                  width: 5,
                                  // Scatter will render in diamond shape
                                  shape: DataMarkerType.diamond),
                              color: const Color.fromRGBO(8, 142, 255, 1),
                            ),
                          ],
                        )
                      : SfCartesianChart(
                          primaryYAxis: CategoryAxis(isVisible: false),
                          primaryXAxis: DateTimeAxis(
                              intervalType: DateTimeIntervalType.hours,isVisible: false),
                          // tooltipBehavior: _tooltip,
                          series: <ChartSeries<ChartData, DateTime>>[
                              LineSeries<ChartData, DateTime>(
                                  dataSource: chartData,
                                  xValueMapper: (ChartData sales, _) => sales.x,
                                  yValueMapper: (ChartData sales, _) => sales.y)
                            ]
                          )),
              Column(
                children: [
                  Text(
                    widget.price!,
                    style: const TextStyle(
                        fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.percentage!,
                    style: TextStyle(color: Colors.pink[400], fontSize: 10),
                  ),
                ],
              ),
              Container(
                child: Text(
                  widget.value!,
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ChartData {
  // ChartData(this.x, this.y, );
  // final double x;
  // final double y;
  ChartData(
    this.x,
    this.y,
  );
  final DateTime x;
  final double y;
}
