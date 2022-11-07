// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class SliddingPage extends StatefulWidget {
  const SliddingPage({super.key});
  @override
  State<SliddingPage> createState() => _SliddingPageState();
}

class _SliddingPageState extends State<SliddingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Watchlist"),
          centerTitle: true,
        ),
        body: DraggableScrollableSheet(builder: (context, controller) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 0),
            child: Container(
              color: Colors.purple,
              // ignore: sort_child_properties_last
              child: ListView.builder(
                  itemCount: 15,
                  controller: controller,
                  itemBuilder: (BuildContextcontext, index) {
                    return ListTile(
                      title: Text('Item ${index + 1}'),
                    );
                  }),
              // decoration:  BoxDecoration(
              //   // color: Colors.white,
              //   borderRadius: BorderRadius.only(
              //     topLeft: Radius.circular(20),
              //     topRight: Radius.circular(20)
              //   )
              // ),
            ),
          );
        }));
  }
}
