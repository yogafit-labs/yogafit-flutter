import 'package:flutter/material.dart';
import 'package:yogafit/common/bottom_navigation_bar.dart';
import 'package:yogafit/create_lecture_page/create_lecture_page.dart';
import 'package:yogafit/reservation_page/reservation_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pages = [
    const ReservationPage(),
    const CreateLecturePage(),
  ];
  int _currentIndex = 0;

  void _changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: pages[_currentIndex],
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _changePage,
      ),
    );
  }
}
