import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'CustomeText.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  DateTime currentDate = DateTime.now();
  List<String> Shift = ["Morning", "Evening"];
  List<String> Supplier_list = ["Supplier1", "Supplier2"];
  String gender = "male";

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate)
      setState(() {
        currentDate = pickedDate;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        title: Text("Van Milk Collection"),
        // autoLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Custometext(
              text: "Date",
              textsize: 16.0,
              color: const Color(0xFF262626),
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Color(0xFF818284)))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Custometext(
                    text: currentDate.toString(),
                    textsize: 16,
                    color: Color(0xFF818284),
                  ),
                  IconButton(
                    icon: const Icon(LineIcons.calendar),
                    color: Color(0xFF262626),
                    onPressed: () async {
                      setState(() {});

                      await _selectDate(context);
                    },
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Custometext(
              text: "Shift",
              textsize: 16.0,
              color: const Color(0xFF262626),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: RadioListTile(
                    title: Text("Morning"),
                    value: "male",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile(
                    title: Text("Evening"),
                    value: "male",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                      });
                    },
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Custometext(
              text: "Route No",
              textsize: 16.0,
              color: const Color(0xFF262626),
            ),
            Flexible(
              child: TextFormField(
                style: GoogleFonts.poppins(
                    color: const Color(0xFF262626),
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
                decoration: InputDecoration(
                  hintText: "Enter Rout No",
                  hintStyle: GoogleFonts.poppins(
                      color: const Color(0xFF818284),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Custometext(
              text: "Van No",
              textsize: 16.0,
              color: const Color(0xFF262626),
            ),
            Flexible(
              child: TextFormField(
                style: GoogleFonts.poppins(
                    color: const Color(0xFF262626),
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
                decoration: InputDecoration(
                  hintText: "Enter Van No",
                  hintStyle: GoogleFonts.poppins(
                      color: const Color(0xFF818284),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Custometext(
              text: "Supplier",
              textsize: 16.0,
              color: const Color(0xFF262626),
            ),
            Custometext(
              text: "Quantity",
              textsize: 16.0,
              color: const Color(0xFF262626),
            ),
            Flexible(
              child: TextFormField(
                style: GoogleFonts.poppins(
                    color: const Color(0xFF262626),
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
                decoration: InputDecoration(
                  hintText: "Enter Quantity",
                  hintStyle: GoogleFonts.poppins(
                      color: const Color(0xFF818284),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Custometext(
              text: "FAT %",
              textsize: 16.0,
              color: const Color(0xFF262626),
            ),
            Flexible(
              child: TextFormField(
                style: GoogleFonts.poppins(
                    color: const Color(0xFF262626),
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
                decoration: InputDecoration(
                  hintText: "Enter FAT %",
                  hintStyle: GoogleFonts.poppins(
                      color: const Color(0xFF818284),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Custometext(
              text: "CLR",
              textsize: 16.0,
              color: const Color(0xFF262626),
            ),
            Flexible(
              child: TextFormField(
                style: GoogleFonts.poppins(
                    color: const Color(0xFF262626),
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
                decoration: InputDecoration(
                  hintText: "Enter CLR",
                  hintStyle: GoogleFonts.poppins(
                      color: const Color(0xFF818284),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Custometext(
              text: "SNF %",
              textsize: 16.0,
              color: const Color(0xFF262626),
            ),
            Flexible(
              child: TextFormField(
                style: GoogleFonts.poppins(
                    color: const Color(0xFF262626),
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
                decoration: InputDecoration(
                  hintText: "Enter SNF %",
                  hintStyle: GoogleFonts.poppins(
                      color: const Color(0xFF818284),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Custometext(
              text: "Notes",
              textsize: 16.0,
              color: const Color(0xFF262626),
            ),
            Flexible(
              child: TextFormField(
                style: GoogleFonts.poppins(
                    color: const Color(0xFF262626),
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
                decoration: InputDecoration(
                  hintText: "Enter Notes",
                  hintStyle: GoogleFonts.poppins(
                      color: const Color(0xFF818284),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
