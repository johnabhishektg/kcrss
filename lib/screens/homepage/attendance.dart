import 'package:flutter/material.dart';
import 'package:kcrss/screens/homepage/attendance_list.dart';
import '../../constants/colors.dart';
import '../../widgets/nav_header.dart';

const List<String> classList = <String>['CLASS', '6th', '7th', '8th', '9th'];
const List<String> dateList = <String>['DATE', '6th', '7th', '8th', '9th'];
const List<String> timeList = <String>['TIME', '6th', '7th', '8th', '9th'];

class Attendance extends StatelessWidget {
  const Attendance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: NavHeader(context),
      ),
      body: ClassAttandance(),
    );
  }
}

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

          // BUTTONS

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
                      fontWeight: FontWeight.w500,
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
                      fontWeight: FontWeight.w500,
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
                      fontWeight: FontWeight.w500,
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

              Container(
                padding: EdgeInsets.only(top: 80),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AttendanceList()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(darkLime),
                    foregroundColor: MaterialStateProperty.all(tdBlack),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.all(20),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    minimumSize: MaterialStateProperty.all(const Size(200, 30)),
                  ),
                  child: Text(
                    "SUBMIT",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ],

            //SUBMIT
          ),
        ],
      ),
    );
  }
}
