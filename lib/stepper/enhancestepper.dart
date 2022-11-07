import 'package:flutter/material.dart';
import 'package:enhance_stepper/enhance_stepper.dart';
import 'package:tuple/tuple.dart';
import 'package:ddlog/ddlog.dart';

class EnhanceStepperPage extends StatefulWidget {
  EnhanceStepperPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _EnhanceStepperPageState createState() => _EnhanceStepperPageState();
}

class _EnhanceStepperPageState extends State<EnhanceStepperPage> {
  int groupValue = 0;

  StepperType _type = StepperType.vertical;

  List<Tuple2> tuples = [
    const Tuple2(
     Icons.calendar_today,
      StepState.indexed,
    ),
    const Tuple2(
      Icons.calendar_today,
      StepState.editing,
    ),
    const Tuple2(
      Icons.calendar_today,
      StepState.complete,
    ),
    const Tuple2(
      Icons.calendar_today,
      StepState.complete,
    ),
    const Tuple2(
      Icons.calendar_today,
      StepState.complete,
    ),
  ];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          TextButton(
              onPressed: () {
                ddlog("change");
                setState(() {
                  _type = StepperType.vertical;
                  // _type ==
                      // ? StepperType.horizontal
                      // :
                      //  StepperType.vertical;
                });
              },
              child: const Icon(
                Icons.change_circle_outlined,
                color: Colors.white,
              )),
        ],
      ),
      body: buildStepperCustom(context),
    );
  }

  void go(int index) {
    if (index == -1 && _index <= 0) {
      ddlog("it's first Step!");
      return;
    }

    if (index == 1 && _index >= tuples.length - 1) {
      ddlog("it's last Step!");
      return;
    }

    setState(() {
      _index += index;
    });
  }

  Widget buildStepperCustom(BuildContext context) {
    return EnhanceStepper(
      stepIconSize: 30,
      type: _type,
      horizontalTitlePosition: HorizontalTitlePosition.bottom,
      horizontalLinePosition: HorizontalLinePosition.top,
      currentStep: _index,
      physics: const ClampingScrollPhysics(),
      steps: tuples
          .map((e) => EnhanceStep(
                icon: Icon(
                  e.item1,
                  color: Colors.grey,
                  size: 30,
                ),
                state: StepState.values[tuples.indexOf(e)],
                isActive: _index == tuples.indexOf(e),
                title: Text("step ${tuples.indexOf(e)}"),
                subtitle: Text(
                  "${e.item2.toString().split(".").last}",
                ),
                content: Text("Content for Step ${tuples.indexOf(e)}"),
              ))
          .toList(),
      onStepCancel: () {
        go(-1);
      },
      onStepContinue: () {
        go(1);
      },
      onStepTapped: (index) {
        ddlog(index);
        setState(() {
          _index = index;
        });
      },
    );
  }
}
