import 'package:flutter/material.dart';
import 'package:flutter_application_3/DesignPage/stackpage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, left: 10),
                height: 50,
                width: 370,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.orange[400],
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 8),
                      child: const Icon(
                        Icons.alarm,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text(
                        'Ongoing',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text(
                        '|',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text(
                        '2.5 X',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Text(
                        'Subscribed Till 2 Mar 2022',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 20),
                    child: Image.asset(
                      'image/goo.png',
                      height: 30,
                      width: 30,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 15),
                    child: const Text(
                      'Shigan Quantum Technologies',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 25,
                    width: 120,
                    margin: const EdgeInsets.only(left: 70),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.red,
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Closes in 2 Days',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, bottom: 5),
                    child: const Text(
                      'Type:',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 5, bottom: 5),
                    child: const Text(
                      'Book Building',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 30),
                    child: const Text(
                      'Price Range',
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 15),
                    child: const Text(
                      'Issue Size',
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 15),
                    child: const Text(
                      'Min Investment(₹)',
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 35),
                    child: const Text(
                      '50-52',
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 55),
                    child: const Text(
                      '22.70 Cr',
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 30),
                    child: const Text(
                      '150000',
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: const Text(
                      '(3k Shares)',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 40),
                    child: const Text(
                      'Sector',
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 48),
                    child: const Text(
                      'Exchange',
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 43),
                    child: const Text(
                      'Textile',
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 45),
                    child: const Text(
                      'NSE,BSE',
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30, left: 45),
                    child: const Text(
                      'Open:',
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: const Text(
                      '28 Feb 2022',
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30, left: 8),
                    child: const Text(
                      '|',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30, left: 10),
                    child: const Text(
                      'Close:',
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: const Text(
                      '3 Mar 2022',
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: const Center(
                  child: Text(
                    'Motilal Oswal Report',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15, left: 45, right: 10),
                child: const Text(
                  "We have done the research so that you don't have to Lorem ipsum dolor sit amet consectetur",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ),
              Center(
                child: Container(
                  height: 40,
                  width: 200,
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orange,
                  ),
                  child: const Center(
                    child: Text(
                      'View Detailed Report',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: const Center(
                  child: Text(
                    'Time table',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            const  SizedBox(
                  height: 40,
                ),
                StackPage(date: "24",dateName: "Today",tittle: "Opening Date"),
                StackPage(date: "08",dateName: "Feb 2022",tittle: "Closing Date"),
                StackPage(date: "14",dateName: "Feb 2022 (Tentative)",tittle: "Finalisation of Basis of Allotment"),
                StackPage(date: "15",dateName: "Feb 2022 (Tentative)",tittle: "Initiation Of Refunds"),
                StackPage(date: "16",dateName: "Feb 2022 (Tentative)",tittle: "Transfer of Shares to Demat Account"),
                StackPage(date: "16",dateName: "Feb 2022 (Tentative)",tittle: "Listing Date"),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: const Center(
                  child: Text(
                    'About the Company & Objective',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 15, left: 10),
                    child: const Text(
                      'Prospectus',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15, left: 8),
                    child: const Icon(
                      Icons.insert_drive_file_outlined,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 15, left: 10),
                    child: const Text(
                      "Description They Shigan Quantum Technologies limited",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 2, left: 10),
                    child: const Text(
                      '(Shigan), is an alternative fuel system solution provider for',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 2, left: 6),
                    child: const Text(
                      ' automotive, locomotive and stationary engine applications. ',
                      style: TextStyle(color: Colors.grey, fontSize: 13.5),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 2, left: 8),
                    child: const Text(
                      'They are the only company in India, who has completely',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 2, left: 10),
                    child: const Text(
                      'indegenised BS-VI + OBD-II CNG fuel system, to provide',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 2, left: 10),
                        child: const Text(
                          'advanced technology at India',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 2, left: 8),
                        child: const Text(
                          '...Read More',
                          style: TextStyle(color: Colors.orange, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 5),
                    child: const Icon(
                      Icons.location_on_outlined,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 5),
                    child: const Text(
                      'Shyam Kunj 183-A Sainik Farms, Western Avenue , New ',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 2, left: 35),
                child: const Text(
                  'Delhi Delhi , India. Pincode: 110062',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 10),
                    child: const Icon(Icons.call, color: Colors.grey),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 6),
                    child: const Text(
                      "91-98181 62569",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 25),
                    child: const Icon(
                      Icons.email_outlined,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 6),
                    child: const Text(
                      "cs@shigan.net",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 15),
                    child: const Icon(
                      Icons.web_asset,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 6),
                    child: const Text(
                      'www.shigan-quantum.com',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: Text(
                  "Promoters",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30, left: 20),
                    child: const Text(
                      "Promoters",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30, left: 60),
                    child: const Text(
                      "Share Held(K)",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30, right: 20),
                    child: const Text(
                      "Share Held",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 20),
                    child: const Text(
                      "Tata Sons Private Ltd",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, right: 20),
                    child: const Text(
                      "80000",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, right: 30),
                    child: const Text(
                      "7.47%",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              // ignore: sized_box_for_whitespace
              Container(
                height: 20,
                child: Divider(
                  color: Colors.grey[150],
                  thickness: 5,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 20),
                    child: const Text(
                      "Tata Investment Corpor...",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, right: 20),
                    child: const Text(
                      "2669125",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, right: 30),
                    child: const Text(
                      "41.82%",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              // ignore: sized_box_for_whitespace
              Container(
                height: 20,
                child: Divider(
                  color: Colors.grey[150],
                  thickness: 5,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 20),
                    child: const Text(
                      "Tata Capital Ltd",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 30),
                    child: const Text(
                      "10285",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, right: 30),
                    child: const Text(
                      "2.50%%",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 10),
                    child: const Text(
                      "View More",
                      style: TextStyle(color: Colors.orange, fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 4),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.orange,
                      size: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: Text(
                  "Booking Running Manager",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30, left: 20),
                    child: const Text(
                      "Promoters",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30, left: 60),
                    child: const Text(
                      "Share Held(K)",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30, right: 20),
                    child: const Text(
                      "Share Held",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 20),
                    child: const Text(
                      "Tata Sons Private Ltd",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, right: 20),
                    child: const Text(
                      "80000",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, right: 30),
                    child: const Text(
                      "7.47%",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              Container(
                height: 20,
                child: Divider(
                  color: Colors.grey[150],
                  thickness: 5,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 20),
                    child: const Text(
                      "Tata Investment Corpor...",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, right: 20),
                    child: const Text(
                      "2669125",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, right: 30),
                    child: const Text(
                      "41.82%",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              Container(
                height: 20,
                child: Divider(
                  color: Colors.grey[150],
                  thickness: 5,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 20),
                    child: const Text(
                      "Tata Capital Ltd",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 30),
                    child: const Text(
                      "10285",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, right: 30),
                    child: const Text(
                      "2.50%%",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 10, bottom: 20),
                    child: const Text(
                      "View More",
                      style: TextStyle(color: Colors.orange, fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 4, bottom: 20),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.orange,
                      size: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
