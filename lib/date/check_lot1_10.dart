import 'package:flutter/material.dart';
import '../lottery_number.dart';
class lott1_10 extends StatefulWidget {
  const lott1_10({Key? key}) : super(key: key);

  @override
  _lott1_10State createState() => _lott1_10State();
}

class _lott1_10State extends State<lott1_10> {
  var items = [
    lotterry(
      date: 13,
      id: 1,
      name: 'รางวัลที่ 1',
      price: 6000000,
      number: '045037',
    ),
    lotterry(
      date: 13,
      id: 3,
      name: 'เลขหน้า 3 ตัว',
      price: 4000,
      number: '247 458',
    ),
    lotterry(
      date: 13,
      id: 3,
      name: 'เลขท้าย 3 ตัว',
      price: 4000,
      number: '331 755',
    ),
    lotterry(
      date: 13,
      id: 2,
      name: 'เลขท้าย 2 ตัว',
      price: 2000,
      number: '95',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal.shade100,
        appBar: AppBar(
          title: Text('1 พ.ย 2564'),
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
