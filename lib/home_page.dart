import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/check.dart';
import 'package:untitled/look_lotterry.dart';

class HomePage extends StatefulWidget {
  //static const routName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var title = 1;
  var _subPageIndex = 1;
  var _selectedBottomNavIndex = 0;
  _showSubPage(int index) {
    setState(() {
      if (index == 1) {
        title = 1;
      }
      if (index == 2) {
        title = 2;
      }

      _subPageIndex = index;
    });
    Navigator.of(context).pop();
  }

  Widget _buildSubPage() {
    switch (_subPageIndex) {
    // case 0: // home page
    // return Center(
    //   child: Text('THIS IS A HOME PAGE',
    //    style: Theme.of(context).textTheme.headline1),
    // );
      case 1:
        return Center(
          child: _selectedBottomNavIndex == 1 && _subPageIndex == 1
              ? look()
              : check(),
        );
      case 2:
        return Center(
          child: Text('Profile'),
        );

    //return _nani();

      default:
        return SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _subPageIndex==1?Text('ดูเลขแต่ละงวด'):Text('ตรวจหวย'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40.0),
                    child: Container(
                      width: 80.0,
                      height: 80.0,
                      child: Image.asset(
                        'assets/images/me.jpg',
                        width: 51.0,
                      ),
                    ),
                  ),
                  Text(
                    'Kamonraphu Yenjit',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Nok0623157331@hotmail.com',
                      style: TextStyle(fontSize: 15.0, color: Colors.white70),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('เลขที่ออก',style: TextStyle(fontSize: 18.0),),
              onTap: () => _showSubPage(1),
            ),
            Divider(
              height: 1,
              thickness: 1,
            ),
            ListTile(
              title: Text('ตรวจหวย',style: TextStyle(fontSize: 18.0),),
              onTap: () => _showSubPage(2),
            ),
            Divider(
              height: 1,
              thickness: 1,
            ),
          ],
        ),
      ),
      body: Container(child: _subPageIndex == 1 ?  look() : check()),
    );
  }
}
