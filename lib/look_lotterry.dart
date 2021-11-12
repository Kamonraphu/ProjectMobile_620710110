import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/date/check_lot16_0.dart';
import 'package:untitled/date/check_lot16_1.dart';
import 'package:untitled/date/check_lot16_9.dart';
import 'package:untitled/date/check_lot1_10.dart';
import 'package:untitled/date/check_lot1_9.dart';
import 'lottery_number.dart';

class look extends StatefulWidget {
  const look({Key? key}) : super(key: key);

  @override
  _lookState createState() => _lookState();
}

class _lookState extends State<look> {
  final textFieldController = TextEditingController();
  var items = [
    lotterry(
      date: 13,
      id: 1,
      name: 'รางวัลที่ 1',
      price: 6000000,
      number: '386372',
    ),
    lotterry(
      date: 13,
      id: 3,
      name: 'เลขหน้า 3 ตัว',
      price: 4000,
      number: '964 602',
    ),
    lotterry(
      date: 13,
      id: 3,
      name: 'เลขท้าย 3 ตัว',
      price: 4000,
      number: '295 798',
    ),
    lotterry(
      date: 13,
      id: 2,
      name: 'เลขท้าย 2 ตัว',
      price: 40,
      number: '38',
    ),
  ];
  _date() {
    setState(() {
      if (textFieldController.text == '13') {
        buildListView();
        print('13');
      }
    });
  }

  var date = [
    '1 พฤศจิกายน 2654',
    '16 ตุลาคม 2564',
    '1 ตุลาคม 2564',
    '16 กันยายน 2564',
    '1 กันยายน 2564'
  ];
  var dd = [1,16, 1, 17, 2];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade100,
      body: Container(

        child: buildchecklot(),
      ),

    );
  }

  ListView buildchecklot() {
    return ListView.builder(
          itemCount: date.length,
          itemBuilder: (BuildContext context, int index) {
            var item = date[index];
            return Card(
              color: Colors.teal.shade200,
                margin: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    if (date[index] == '16 ตุลาคม 2564') {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => lott()));
                    }
                    if (date[index] == '1 ตุลาคม 2564') {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => lott16()));
                    }
                    if (date[index] == '16 กันยายน 2564') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => lott16_9()));
                    }
                    if (date[index] == '1 กันยายน 2564') {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => lott1_9()));
                    }
                    if (date[index] == '1 พฤศจิกายน 2654') {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => lott1_10()));
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    item.toString(),
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 110.0),
                                    child: Image.asset('assets/images/cartoon.jpg', width: 50.0,),
                                  )
                                ],
                              ),
                            ),
                            
                          ],
                        ),
                        
                      ],
                    ),
                  ),
                  
                  
                ));
          });
  }

  ListView buildListView() {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          var item = items[index];
          return Card(
              margin: const EdgeInsets.all(15.0),
              color: Colors.cyan,
              elevation: 1, // กำหนดเงาให้กับ Card ค่า default คือ 1 นะ
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      10) // กำหนดความโค้งของขอบ ถ้าไม่ให้โค้งเลยคือ default = BorderRadius.zero
                  ),
              child: InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 8.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Center(
                              child: Text(
                                item.name,
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Row(
                              children: [
                                Text(
                                  item.price.toString(),
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                Text(
                                  ' บาท',
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Row(
                              children: [
                                Text(
                                  'เลขที่ออก ',
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                Text(
                                  item.number.toString(),
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ));
        });
  }
}
