// import 'package:another_stepper/another_stepper.dart';
// import 'package:another_stepper/dto/stepper_data.dart';
import 'package:flutter/material.dart';


class AnotherStepperPage extends StatefulWidget {
  const AnotherStepperPage({Key? key}) : super(key: key);

  @override
  State<AnotherStepperPage> createState() => _AnotherStepperPageState();
}

class _AnotherStepperPageState extends State<AnotherStepperPage> {

  int _currentStep = 0;

  _stepTapped(int step) {
    setState(() => _currentStep = step);
  }

  _stepContinue() {
    _currentStep < 5 ? setState(() => _currentStep += 1) : null;
  }

  _stepCancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }

  // List<StepperData> stepperData = [
  //   StepperData(
  //     title: "Order Placed",
  //     subtitle: "Your order has been placed",
  //   ),
  //   StepperData(
  //     title: "Preparing",
  //     subtitle: "Your order is being prepared",
  //   ),
  //   StepperData(
  //     title: "On the way",
  //     subtitle: "Our delivery executive is on the way to deliver your item",
  //   ),
  //   StepperData(
  //     title: "Delivered",
  //     subtitle: "Your order was delivered successfully",
  //   ),
  // ];

  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        // body: 
        body: Theme(
    data: ThemeData(
                  // ignore: deprecated_member_use
                  accentColor: Colors.orange,
                  primarySwatch: Colors.orange,
                  colorScheme: const ColorScheme.light(
                    primary: Colors.orange
                  )
                ),
    child: Stepper(
        type: StepperType.vertical,
                      physics: const ScrollPhysics(),
                      currentStep: _currentStep,
                      onStepTapped: (step) => _stepTapped(step),
                      onStepContinue: _stepContinue,
                      onStepCancel: _stepCancel,
                      steps: const [
                        Step(
                          title: Text('Today'),
                          // state: StepState.complete,
                          // isActive: true,
                          subtitle: Text(
                            'Opening Date',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                          content: Text( '',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ),
                        Step(
                          title: Text('Feb 2022'),
                          // state: StepState.disabled,
                          // isActive: true,
                          subtitle: Text(
                            'ClosingDate',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                          content: Text('',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ),
                        Step(
                          title: Text('Feb 2022 (Tentative)'),
                          // state: StepState.editing,
                          // isActive: true,
                          subtitle: Text(
                            'Finalisation of Basis of Allotment',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                          content: Text('',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ),
                        Step(
                          title: Text('Feb 2022 (Tentative)'),
                          // state: StepState.error,
                          // isActive: true,
                          subtitle: Text(
                            'Initation Of Refunds',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                          content: Text('',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ),
                        Step(
                          title: Text('Feb 2022 (Tentative)'),
                          // state: StepState.indexed,
                          // isActive: true,
                          subtitle: Text(
                            'Transfer of Shares to Demat Account',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                          content: Text( '',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ),
                        Step(
                          title: Text('Feb 2022 (Tentative)'),
                          // isActive: true,
                          subtitle: Text(
                            'Listing Date',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                          content: Text( '',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ),
                        
                      ],
    )),
      ),
    );
  }
}