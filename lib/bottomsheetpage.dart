import 'package:flutter/material.dart';


class BottomSheetPage extends StatefulWidget {
  const BottomSheetPage({super.key});
  @override
  State<BottomSheetPage> createState() => _BottomSheetPageState();
}

class _BottomSheetPageState extends State<BottomSheetPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Custom Bottom Sheet'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: (){
              showModalBottomSheet(
                context: context, 
                builder: (context){
                  return Container(
                    width: size.width,
                    height: size.height / 1.6,
                    child: Positioned(
                      bottom: 0,
                      child: Container(
                        width: size.width,
                        height: size.height / 2.1,
                        decoration: const BoxDecoration(
                          color: Colors.pinkAccent
                        ),
                      )),
                  );
                });
            },
             child: const Text('Open')),
        ),
      ),
    );
  }
}