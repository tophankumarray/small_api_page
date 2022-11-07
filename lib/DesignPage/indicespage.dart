import 'package:flutter/material.dart';
import 'package:flutter_application_3/DesignPage/nsepage.dart';
import '../model/modelpage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class IndicesPage extends StatefulWidget {
  const IndicesPage({Key? key}) : super(key: key);

  @override
  State<IndicesPage> createState() => _IndicesPageState();
}

class _IndicesPageState extends State<IndicesPage> {
  modelpage? modelData;

//! Get Intraday Data
  Future<modelpage> getModelpageData() async {
    var url =
        "https://leevendzl6.execute-api.ap-south-1.amazonaws.com/uat/api/getdata";
    // final headers = {"Content-type": "application/json"};
    final http.Response response = await http.post(
      Uri.parse(url),
      // headers: {"Content-type": "application/json"},
      body: jsonEncode({
        "api_name": "GET_EQUITY_INTRADAY_CHART",
        "parameters": {"exchange": "NSE", "co_code": "20559"}
      }),
    );
    //  print("HEY MRERRRRERE");

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);

      modelData = modelpage.fromJson(data);
      setState(() {});
    }

    return modelData!;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getModelpageData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      child: Text(
                        'Indices',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                    Container(
                      child: const Icon(
                        Icons.filter_list,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Text(
                    'Intraday',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      child: Text(
                        'Price',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                    Container(
                      child: const Icon(
                        Icons.filter_list,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: Text(
                        '1W%',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                    Container(
                      child: const Icon(
                        Icons.filter_list,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            modelData == null
                ? const Center(child: CircularProgressIndicator())
                : Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: modelData!.data!.length,
                      itemBuilder: (context, index) {
                        var  entradayData  = modelData!.data![index];
                        return NsePage(
                          name: entradayData.exchangeref,
                          price: entradayData.price,
                          percentage: entradayData.dispTime,
                          value: entradayData.coCode,
                          
                        );
                      }),
                ),
          ],
        ),
      ),
    );
  }
}
