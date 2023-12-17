import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_poinku/core.dart';
import '../controller/navigation_bar_controller.dart';

class NavigationBarView extends StatefulWidget {
  const NavigationBarView({Key? key}) : super(key: key);

  Widget build(context, NavigationBarController controller) {
    controller.view = this;

    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.red,
          child: Center(
            child: controller.pages.elementAt(controller.selectedIndex),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 50,
        height: 50,
        child: FloatingActionButton(
          backgroundColor: const Color(0xff0970d7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          onPressed: () {},
          child: const ImageIcon(
            NetworkImage(
              "https://img.icons8.com/?size=80&id=W37KM9pgy3Bf&format=png",
            ),
            size: 24.0,
            color: Colors.white,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        shadowColor: const Color(0xff000000),
        shape: const CircularNotchedRectangle(),
        height: MediaQuery.of(context).size.height * 0.08,
        padding: const EdgeInsets.all(3),
        surfaceTintColor: Colors.white,
        child: ListView.builder(
          itemExtent: 70,
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          physics: const ScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            var item = controller.menus[index];
            bool selected = index == controller.selectedIndex;

            return Padding(
              padding: const EdgeInsets.only(left: 5),
              child: GestureDetector(
                onTap: () {
                  if (item["label"] == "QR Code") {
                    print("tidak ada hasil");
                  } else {
                    controller.updateindex(index);
                  }
                },
                child: Column(
                  children: [
                    Icon(
                      item["icon"],
                      size: 24.0,
                      color:
                          selected ? const Color(0xff0970d7) : Colors.grey[300],
                      // color: const Color(0xffe2e4e7),
                    ),
                    Text(
                      item["label"],
                      style: TextStyle(
                        color: selected
                            ? const Color(0xff0970d7)
                            : Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  State<NavigationBarView> createState() => NavigationBarController();
}
