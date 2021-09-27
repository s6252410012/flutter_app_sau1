import 'package:flutter/material.dart';
import 'package:flutter_app_sau1/views/third_page1_ui.dart';
import 'package:flutter_app_sau1/views/third_page2_ui.dart';
import 'package:flutter_app_sau1/views/third_page3_ui.dart';
import 'package:flutter_app_sau1/views/third_page4_ui.dart';

class ThirdUI extends StatefulWidget {
  const ThirdUI({Key? key}) : super(key: key);

  @override
  _ThirdUIState createState() => _ThirdUIState();
}

class _ThirdUIState extends State<ThirdUI> {
  List page = [
    ThirdPage1UI(),
    ThirdPage2UI(),
    ThirdPage3UI(),
    ThirdPage4UI(),
  ];
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Third UI >_<',
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Page 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.access_alarm,
            ),
            label: 'Page 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.ice_skating,
            ),
            label: 'Page 3',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.gamepad,
            ),
            label: 'Page 4',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[300],
        selectedItemColor: Colors.red,
        currentIndex: selectIndex,
        onTap: (value) {
          setState(() {
            selectIndex = value;
          });
        },
      ),
      body: page.elementAt(selectIndex),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/myprofile.jpg',
                ),
              ),
              accountName: Text(
                'Sahasawat Wittayaprasit',
              ),
              accountEmail: Text(
                'ID : 6252410012',
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/bgdrawer.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              otherAccountsPictures: [
                Image.asset('assets/images/saulogo.png'),
              ],
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'หน้าแรก',
              ),
              leading: Icon(
                Icons.home,
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'ตารางสอน',
              ),
              leading: Icon(
                Icons.table_chart,
                color: Colors.black,
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'ตารางสอบ',
              ),
              leading: Icon(
                Icons.access_alarm,
              ),
              trailing: Text(
                '999',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(
              color: Colors.red,
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'ออกจากระบบ',
              ),
              trailing: Icon(
                Icons.exit_to_app,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.yellow[900],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
