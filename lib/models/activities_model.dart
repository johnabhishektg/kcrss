import 'package:flutter/material.dart';

class ActivityModel {
  String activityImg;
  String activityTitle;
  String activityDescp;

  ActivityModel({
    required this.activityImg,
    required this.activityTitle,
    required this.activityDescp,
  });

  static List<ActivityModel> getActivities() {
    return <ActivityModel>[
      ActivityModel(
        activityImg: 'assets/images/activity.png',
        activityTitle: 'Happy Kids',
        activityDescp: 'loremipsumsomerandomdescriptionidkwhy',
      ),
      ActivityModel(
        activityImg: 'assets/images/activity.png',
        activityTitle: 'Our Teachers and Staff',
        activityDescp: 'loremipsumsomerandomdescriptionidkwhyfawfawgfawfawfaw',
      ),
      ActivityModel(
        activityImg: 'assets/images/activity.png',
        activityTitle: 'Painting on the walls',
        activityDescp: 'loremipsumsomerandomdescriptionidkwhy',
      ),
    ];
  }
}
