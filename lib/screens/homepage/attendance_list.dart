import 'package:flutter/material.dart';
import 'package:kcrss/models/attendance_model.dart';
import '../../constants/colors.dart';
import '../../widgets/nav_header.dart';

class AttendanceList extends StatefulWidget {
  const AttendanceList({super.key});

  @override
  State<AttendanceList> createState() => _AttendanceListState();
}

class _AttendanceListState extends State<AttendanceList> {
  List<AttendanceModel> attendanceModel = AttendanceModel.getStudents();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: NavHeader(context),
        ),
        body: _listView(attendanceModel: attendanceModel));
  }
}

class _listView extends StatelessWidget {
  const _listView({
    super.key,
    required this.attendanceModel,
  });

  final List<AttendanceModel> attendanceModel;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: attendanceModel.length,
      itemBuilder: (BuildContext context, index) {
        return Container(
          child: Container(
            child: ListTile(
              onTap: () {},
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              tileColor: tdBGColor,
              title: Text(
                attendanceModel[index].studentName,
                style: TextStyle(
                  fontSize: 16,
                  color: tdBlack,
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: Icon(
                attendanceModel[index].isCheck
                    ? Icons.check_box
                    : Icons.check_box_outline_blank,
                color: darkLime,
              ),
            ),
          ),
        );
      },
    );
  }
}
