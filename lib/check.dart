import 'package:flutter/material.dart';
import 'package:untitled/check/check16_00.dart';
import 'package:untitled/check/check16_10.dart';
import 'package:untitled/check/check16_99.dart';
import 'package:untitled/check/check1_10.dart';
import 'package:untitled/check/check1_99.dart';

class check extends StatefulWidget {
  const check({Key? key}) : super(key: key);

  @override
  _checkState createState() => _checkState();
}

class _checkState extends State<check> {
  var date = [
    'งวดที่ 1 พฤศจิกายน 2654',
    'งวดที่ 16 ตุลาคม 2564',
    'งวดที่ 1 ตุลาคม 2564',
    'งวดที่ 16 กันยายน 2564',
    'งวดที่ 1 กันยายน 2564'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade100,
      body: Container(
        child: ListView.builder(
            itemCount: date.length,
            itemBuilder: (BuildContext context, int index) {
              var item = date[index];
              return Card(
                  color: Colors.teal.shade200,
                  margin: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      if (date[index] == 'งวดที่ 16 ตุลาคม 2564') {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => check16_10()));
                      }
                      if (date[index] == 'งวดที่ 1 ตุลาคม 2564') {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => check16_00()));
                      }
                      if (date[index] == 'งวดที่ 16 กันยายน 2564') {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => check16_99()));
                      }
                      if (date[index] == 'งวดที่ 1 กันยายน 2564') {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => check1_99()));
                      }
                      if (date[index] == 'งวดที่ 1 พฤศจิกายน 2654') {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => check1_10()));
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
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      item.toString(),
                                      style: TextStyle(fontSize: 20.0),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 70.0),
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
            }),
      ),
    );
  }
}
