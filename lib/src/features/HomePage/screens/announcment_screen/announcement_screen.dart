import 'package:flutter/material.dart';
import 'package:mark_it/src/features/HomePage/screens/menu_drawer/menu_drawer.dart';

import '../../../utils/theme/theme.dart';

class AnnouncementScreen extends StatefulWidget {
  const AnnouncementScreen({super.key});

  @override
  State<AnnouncementScreen> createState() => _AnnouncementScreenState();
}

class _AnnouncementScreenState extends State<AnnouncementScreen> {

  int counter = 0;

  void refresh(int childValue) {
    setState(() {
      counter = childValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Announcements"),
      ),
      drawer: MenuDrawer(notifyParent: (counter){refresh(counter);},),
    );
  }
}
