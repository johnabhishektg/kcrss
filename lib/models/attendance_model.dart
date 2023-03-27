class AttendanceModel {
  int studentId;
  String studentName;
  bool isCheck;

  AttendanceModel({
    required this.studentId,
    required this.studentName,
    this.isCheck = false,
  });

  static List<AttendanceModel> getStudents() {
    return <AttendanceModel>[
      AttendanceModel(studentId: 1, studentName: 'Bukayo Saka', isCheck: true),
      AttendanceModel(
        studentId: 2,
        studentName: 'Martin Odegaard',
      ),
      AttendanceModel(
        studentId: 3,
        studentName: 'William Saliba',
      ),
      AttendanceModel(
        studentId: 4,
        studentName: 'Aaron Ramsdale',
      ),
      AttendanceModel(
        studentId: 5,
        studentName: 'Granit Xhaka',
      ),
    ];
  }
}
