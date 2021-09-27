import 'package:flutter/material.dart';

class ForthUI extends StatefulWidget {
  const ForthUI({Key? key}) : super(key: key);

  @override
  _ForthUIState createState() => _ForthUIState();
}

class _ForthUIState extends State<ForthUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          'Foruth UI ไอที',
          style: TextStyle(
            fontFamily: 'Kanit',
          ),
        ),
        centerTitle: true,
      ),
      body: DefaultTabController(
        length: 6,
        child: Column(
          children: [
            Container(
              color: Colors.pink,
              child: TabBar(
                isScrollable: true,
                labelColor: Colors.yellow,
                indicatorColor: Colors.yellow,
                unselectedLabelColor: Colors.grey[400],
                labelStyle: TextStyle(
                  fontFamily: 'Kanit',
                ),
                tabs: [
                  Tab(
                    text: 'Page 1',
                    icon: Icon(
                      Icons.ac_unit,
                    ),
                  ),
                  Tab(
                    text: 'Page2',
                    icon: Icon(
                      Icons.h_mobiledata,
                    ),
                  ),
                  Tab(
                    text: 'Page3',
                    icon: Icon(
                      Icons.gamepad,
                    ),
                  ),
                  Tab(
                    text: 'Page4',
                    icon: Icon(
                      Icons.safety_divider,
                    ),
                  ),
                  Tab(
                    text: 'Page5',
                    icon: Icon(Icons.access_alarm),
                  ),
                  Tab(
                    text: 'Page6',
                    icon: Icon(
                      Icons.zoom_in,
                    ),
                  ),
                ],
              ),
            ),
            TabBarView(
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
