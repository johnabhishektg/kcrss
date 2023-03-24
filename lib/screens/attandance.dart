import 'package:flutter/material.dart';
import '../constants/colors.dart';

const List<String> classList = <String>['CLASS', '6th', '7th', '8th', '9th'];
const List<String> dateList = <String>['DATE', '6th', '7th', '8th', '9th'];
const List<String> timeList = <String>['TIME', '6th', '7th', '8th', '9th'];

class ClassAttandance extends StatefulWidget {
  const ClassAttandance({super.key});

  @override
  State<ClassAttandance> createState() => _AttandanceState();
}

class _AttandanceState extends State<ClassAttandance> {
  String dropDownClassValue = classList.first;
  String dropDownDateValue = dateList.first;
  String dropDownTimeValue = timeList.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(64, 32, 64, 32),
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(top: 5),
            child: const Text(
              "ಹಾಜರಾತಿ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 40),
            child: const Text(
              "Attendance",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Column(
            children: [
              // DROPDOWN BUTTONS
              Padding(
                padding: EdgeInsets.only(bottom: 25),
                child: //CLASS
                    Container(
                  padding: EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  decoration: BoxDecoration(
                    color: darkLime,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: DropdownButton<String>(
                    value: dropDownClassValue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    underline: Container(),
                    isExpanded: true,
                    dropdownColor: darkLime,
                    style: const TextStyle(
                      color: tdBlack,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                    //alignment: Alignment.center,
                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropDownClassValue = value!;
                      });
                    },
                    items:
                        classList.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Center(child: Text(value)),
                      );
                    }).toList(),
                  ),
                ),
              ),

              //DATE
              Padding(
                padding: EdgeInsets.only(bottom: 25),
                child: Container(
                  padding: EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  decoration: BoxDecoration(
                    color: darkLime,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: DropdownButton<String>(
                    value: dropDownDateValue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    underline: Container(),
                    isExpanded: true,
                    dropdownColor: darkLime,
                    style: const TextStyle(
                      color: tdBlack,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                    //alignment: Alignment.center,
                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropDownDateValue = value!;
                      });
                    },
                    items:
                        dateList.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Center(child: Text(value)),
                      );
                    }).toList(),
                  ),
                ),
              ),

              //TIME
              Padding(
                padding: EdgeInsets.only(bottom: 25),
                child: Container(
                  padding: EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  decoration: BoxDecoration(
                    color: darkLime,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: DropdownButton<String>(
                    value: dropDownTimeValue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    underline: Container(),
                    isExpanded: true,
                    dropdownColor: darkLime,
                    style: const TextStyle(
                      color: tdBlack,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                    //alignment: Alignment.center,
                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropDownTimeValue = value!;
                      });
                    },
                    items:
                        timeList.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Center(child: Text(value)),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Attendance extends StatelessWidget {
  const Attendance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: tdBGColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: tdBlack,
        ),
        title: Container(
          padding: EdgeInsets.only(left: 75),
          child: IconButton(
            icon: Image.asset('assets/images/logo.png'),
            iconSize: 80,
            onPressed: () {},
          ),
        ),
      ),
      body: ClassAttandance(),
    );
  }
}
