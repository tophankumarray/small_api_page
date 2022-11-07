import 'package:flutter/material.dart';
import 'package:flutter_application_3/ScreenPage/fourthpage.dart';
import 'ScreenPage/secondpage.dart';
import 'ScreenPage/thirdpage.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {


  //  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
    
  // }

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    // ignore: no_leading_underscores_for_local_identifiers
    TabController _tabController = TabController(length: 4, vsync: this);
    _tabController.index = 2;
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new_outlined),
                  onPressed: () {},
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  'Shigan Quantum Technolo...',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: IconButton(
                    icon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    onPressed: () {}),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: IconButton(
                    icon: const Icon(
                      Icons.share,
                      color: Colors.grey,
                    ),
                    onPressed: () {}),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50, left: 10),
                child: Text(
                  'JD',
                  style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ],
          ),
          TabBar( 
            isScrollable: true,
            controller: _tabController,
            indicatorColor: Colors.orange,
            indicatorWeight: 3,
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 10),
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.black,
            tabs: const <Widget>[
              Tab(
                child: Text(
                  'Overview',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Tab(
                child: Text(
                  'Subscription',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Tab(
                child: Text(
                  'Indices',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Tab(
                child: Text(
                  'Peer',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
               children: const [
                SecondPage(),
                ThirdPage(),
                FourthPage(),
                SecondPage(),
            ]),
          ),
        ],
      ),
    );
  }
}
