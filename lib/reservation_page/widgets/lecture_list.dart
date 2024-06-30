import 'package:flutter/material.dart';

import 'lecture_list_item.dart';

class LectureList extends StatefulWidget {
  final List<LectureInfo> lectures;

  const LectureList({super.key, required this.lectures});

  @override
  State<LectureList> createState() => _LectureListState();
}

class _LectureListState extends State<LectureList> {
  late List<bool> isReserved;

  @override
  void initState() {
    super.initState();
    isReserved = List.generate(widget.lectures.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: widget.lectures
          .asMap()
          .entries
          .map((lecture) => Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: LectureListItem(
                          thumbnail: Container(
                            decoration: BoxDecoration(
                                color: lecture.value.thumbnailColor),
                          ),
                          title: lecture.value.title,
                          subtitle: lecture.value.subtitle,
                          teacher: lecture.value.teacher,
                          time: lecture.value.time,
                          duration: lecture.value.duration,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isReserved[lecture.key] = !isReserved[lecture.key];
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: isReserved[lecture.key]
                                ? Colors.green
                                : Colors.white,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          margin: const EdgeInsets.only(right: 20),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              isReserved[lecture.key] ? '취소' : '예약',
                              style: TextStyle(
                                color: isReserved[lecture.key]
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(height: 0),
                ],
              ))
          .toList(),
    );
  }
}

class LectureInfo {
  final String title;
  final String subtitle;
  final String teacher;
  final String time;
  final String duration;
  final Color thumbnailColor;

  LectureInfo({
    required this.title,
    required this.subtitle,
    required this.teacher,
    required this.time,
    required this.duration,
    required this.thumbnailColor,
  });
}
