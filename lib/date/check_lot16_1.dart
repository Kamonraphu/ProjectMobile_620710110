import 'package:flutter/material.dart';
import '../lottery_number.dart';

class lott extends StatefulWidget {
  const lott({Key? key}) : super(key: key);

  @override
  _lottState createState() => _lottState();
}

class _lottState extends State<lott> {
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
      price: 2000,
      number: '38',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    //final args=ModalRoute.of(context)!.settings.arguments as lotterry;
    return Scaffold(
        backgroundColor: Colors.teal.shade100,
        appBar: AppBar(
          title: Text('16 ต.ค 2564'),
          foregroundColor: Colors.blue,
        ),
        body: Container(
          child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                var item = items[index];
                return Card(
                    color: Colors.teal.shade200,
                    margin: const EdgeInsets.all(8.0),
                    elevation: 1, // กำหนดเงาให้กับ Card ค่า default คือ 1 นะ
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10) // กำหนดความโค้งของขอบ ถ้าไม่ให้โค้งเลยคือ default = BorderRadius.zero
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/FoodDetails',
                          arguments: item,
                        );
                      },
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
                                  child: Text(
                                    item.name,
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        'รางวัลละ ',
                                        style: TextStyle(fontSize: 20.0),
                                      ),
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
              }),
        ));
  }
}
