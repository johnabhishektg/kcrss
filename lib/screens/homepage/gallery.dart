import 'package:flutter/material.dart';
import 'package:kcrss/models/activities_model.dart';
import '../../widgets/nav_header.dart';

class Gallery extends StatelessWidget {
  List<ActivityModel> activityModel = ActivityModel.getActivities();

  Gallery({super.key});

  final activity = ActivityModel.getActivities();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: NavHeader(context),
      ),
      body: Stack(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                titleHeader(),
                Expanded(
                    child: ListView(
                  children: [
                    Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      margin: const EdgeInsets.all(10),
                      child: Container(
                        width: 200,
                        height: 350,
                        padding: EdgeInsets.all(12),
                        child: Column(
                          children: [
                            Card(
                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              elevation: 5,
                              margin: const EdgeInsets.all(10),
                              child: Image.asset(
                                'assets/images/activity.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const ListTile(
                                  title: Text(
                                    'Sonu Nigam',
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  subtitle: Text(
                                    'Bruh of Sonu Nigam Music.',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w300),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget titleHeader() {
    return Container(
      padding: EdgeInsets.only(top: 32, bottom: 12),
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(top: 1),
            child: const Text(
              "ಚಟುವಟಿಕೆಗಳು",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            child: const Text(
              "Activities",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
