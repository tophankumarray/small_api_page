import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  String? date, dateName, tittle;

  StackPage(
      {@required this.date, @required this.dateName, @required this.tittle});

  @override
  State<StackPage> createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(children: [
                Column(
                  children: [
                    Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.grey[300],
                      size: 50,
                    ),
                    Container(
                      height: 50,
                      width: 1,
                      color: Colors.grey[300],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 23, left: 16),
                  child: Text(
                    widget.date!,
                    style: const TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ]),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.dateName!,
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    widget.tittle!,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
