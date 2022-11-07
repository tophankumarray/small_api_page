import 'package:flutter/material.dart';
import 'package:flutter_application_3/DesignPage/indicespage.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              height: 30,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(20),
              ),
              child: TabBar(
                  controller: _tabController,
                  indicator: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(15)),
                  tabs: const [Tab(text: 'NSE'), Tab(text: 'BSE')]),
            ),
          ),
          Expanded(
            child: TabBarView(controller: _tabController, children: const [
              IndicesPage(),
              Text('BSE'),
            ]),
          )
        ],
      ),
    );
  }
}
