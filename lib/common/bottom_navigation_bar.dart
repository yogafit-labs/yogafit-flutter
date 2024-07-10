import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  final int currentIndex;
  final void Function(int) onTap;

  const CustomNavigationBar(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Lecturer',
        ),
      ],
      currentIndex: widget.currentIndex,
      selectedItemColor: Colors.amber[800],
      onTap: widget.onTap,
    );
  }
}
