import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:slicing_poinku/core.dart';
import '../view/dashboard_view.dart';

class DashboardController extends State<DashboardView> {
  static late DashboardController instance;
  late DashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();

  List<Widget> pages = [
    const Text(
      'Index 0: Home',
    ),
    const Text(
      'Index 1: Business',
    ),
    const Text(
      'Index 2: School',
    ),
  ];

  List<Map<String, dynamic>> menusNavbar = [
    {
      "icon": Icons.home,
      "label": "Beranda",
    },
    {
      "icon": Icons.airplane_ticket_sharp,
      "label": "I-Kupon",
    },
    {
      "icon": Icons.access_time_rounded,
      "label": "Riwayat",
    },
    {
      "icon": Icons.person,
      "label": "Profil",
    }
  ];

  List<Map<String, dynamic>> data = [
    {
      "id": 1,
      "image": "https://img.icons8.com/?size=48&id=63192&format=png",
      "name": "Casback Point",
    },
    {
      "id": 2,
      "image": "https://img.icons8.com/?size=80&id=Dco1AA5U7oUe&format=png",
      "name": "Tukar Poin",
    },
    {
      "id": 3,
      "image": "https://img.icons8.com/?size=64&id=46658&format=png",
      "name": "Stamp",
    },
    {
      "id": 4,
      "image": "https://img.icons8.com/?size=80&id=7KWSvnNElvvz&format=png",
      "name": "i-Kupon",
    },
    {
      "id": 5,
      "image": "https://img.icons8.com/?size=80&id=mE1FxFbAhM7l&format=png",
      "name": "Bayar",
    },
    {
      "id": 6,
      "image": "https://img.icons8.com/?size=80&id=DKFsIpK1UB3u&format=png",
      "name": "Promosi",
    },
    {
      "id": 7,
      "image": "https://img.icons8.com/?size=48&id=L4YcKoGCxTLo&format=png",
      "name": "Klik \nIndomaret",
    },
    {
      "id": 8,
      "image": "https://img.icons8.com/?size=80&id=3jy2FM2kMd5A&format=png",
      "name": "Yummy Choice",
    },
    {
      "id": 9,
      "image": "https://img.icons8.com/?size=80&id=5NqU0lK0gFDU&format=png",
      "name": "Indo Paket",
    },
    {
      "id": 10,
      "image": "https://img.icons8.com/?size=48&id=13720&format=png",
      "name": "FAQ",
    },
  ];
}
