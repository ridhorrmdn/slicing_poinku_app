import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:slicing_poinku/core.dart';
import '../view/navigation_bar_view.dart';

class NavigationBarController extends State<NavigationBarView> {
  static late NavigationBarController instance;
  late NavigationBarView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int selectedIndex = 0;
  updateindex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }

  List<Widget> pages = [
    const DashboardView(),
    const Text(
      'Index 1: Business',
    ),
    const Text(
      'Index 2: Scholl',
    ),
    const Text(
      'Index 3: Campus',
    ),
    const Text(
      'Index 3: Campus',
    ),
  ];

  List<Map<String, dynamic>> menus = [
    {
      "icon": Icons.home,
      "label": "Beranda",
    },
    {
      "icon": Icons.airplane_ticket_sharp,
      "label": "I-Kupon",
    },
    {
      "icon": Icons.home,
      "label": "QR Code",
    },
    {
      "icon": Icons.access_time_rounded,
      "label": "Riwayat",
    },
    {
      "icon": Icons.person,
      "label": "Profile",
    }
  ];
}
