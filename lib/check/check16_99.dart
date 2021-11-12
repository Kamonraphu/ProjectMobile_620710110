
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import '../lottery_number.dart';

class check16_99 extends StatefulWidget {
  const check16_99({Key? key}) : super(key: key);

  @override
  _check16_99State createState() => _check16_99State();
}

class _check16_99State extends State<check16_99> {
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
  var lott = [070935,609,817,007,379,90];
  static const pin = '123456';
  var input = '';
  final textFieldController = TextEditingController();
  void _showMaterialDialog(String title, String msg) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(msg, style: Theme.of(context).textTheme.bodyText2),
          actions: [
            // ปุ่ม OK ใน dialog
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                // ปิด dialog
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _handleClickButton(int num) {
    print('You pressed $num');

    setState(() {
      if (num == -1) {
        if (input.length > 0) input = input.substring(0, input.length - 1);
      } else {
        input = '$input$num';
      }

      if (input.length == pin.length) {
        var choice=0;
        var fornt=input.substring(0,3);
        var ff=int.parse(fornt);
        var frontnum=int.parse(input);
        var frontnumm=frontnum/1000;
        var endnumm=(frontnum%1000);
        var twoo=(frontnum%100);
        print('frontnum $frontnum');
        print('frontnumm $ff');
        print('endnumm $endnumm');
        print('twoo $twoo');
        for(var  k=0;k<lott.length;k++)
          if(frontnum==lott[0])
            choice=1;
          //_showMaterialDialog('คุณถูกรางวัลที่1 ตายแล้วๆๆๆๆ 6ล้าน', 'ต้องนัดรวมญาติแล้วจังหวะนี้');
          else if(ff==lott[1])
            choice=2;
          //_showMaterialDialog('คุณถูกเลขหน้า 3 ตัว 4000เหนาะๆ', 'กินไรดีเพื่อนเลี้ยงเอง');
          else if(ff==lott[2])
            choice=3;
          // _showMaterialDialog('คุณถูกเลขหน้า 3 ตัว 4000เหนาะๆ', 'กินไรดีเพื่อนเลี้ยงเอง');
          else if(endnumm==lott[3])
            choice=4;
          //  _showMaterialDialog('คุณถูกเลขท้าย 3 ตัว 4000เหนาะๆ', 'กินไรดีเพื่อนเลี้ยงเอง');
          else if(endnumm==lott[4])
            choice=5;
          // _showMaterialDialog('คุณถูกเลขท้าย 3 ตัว 4000เหนาะๆ', 'กินไรดีเพื่อนเลี้ยงเอง');
          else if(twoo==lott[5])
            choice=6;
        // _showMaterialDialog('คุณถูกเลขท้าย 2 ตัว 2000เอง', 'จะคุ้มไหมเนี่ย2000 เดือนนี้ซื้อเยอะกว่า2000อีก');

        if( choice==1)
          _showMaterialDialog('คุณถูกรางวัลที่1 ตายแล้วๆๆๆๆ 6ล้าน', 'ต้องนัดรวมญาติแล้วจังหวะนี้');
        if( choice==2)
          _showMaterialDialog('คุณถูกเลขหน้า 3 ตัว 4000เหนาะๆ', 'กินไรดีเพื่อนเลี้ยงเอง');
        if( choice==3)
          _showMaterialDialog('คุณถูกเลขหน้า 3 ตัว 4000เหนาะๆ', 'กินไรดีเพื่อนเลี้ยงเอง');
        if( choice==4)
          _showMaterialDialog('คุณถูกเลขท้าย 3 ตัว 4000เหนาะๆ', 'กินไรดีเพื่อนเลี้ยงเอง');
        if( choice==5)
          _showMaterialDialog('คุณถูกเลขท้าย 3 ตัว 4000เหนาะๆ', 'กินไรดีเพื่อนเลี้ยงเอง');
        if( choice==6)
          _showMaterialDialog('คุณถูกเลขท้าย 2 ตัว 2000เอง', 'จะคุ้มไหมเนี่ย2000 เดือนนี้ซื้อเยอะกว่า2000อีก');
        if( choice==0)
          _showMaterialDialog('ไม่ถูกนะคร้าบบ', 'พลาดนิดเดียวรอบหน้าเอาใหม่');
        input = '';
        choice=0;
      }
    });
  }

  Widget _buildNumPad() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          [1, 2, 3],
          [4, 5, 6],
          [7, 8, 9],
          [-2, 0, -1],
        ].map((row) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: row.map((item) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: LoginButton(
                  number: item,
                  onClick: () {
                    _handleClickButton(item);
                  },
                ),
              );
            }).toList(),
          );
        }).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade100,
      appBar: AppBar(
        title: Text('ตรวจงวด 16 ต.ค 2564'),

      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            /*stops: [
              0.0,
              0.95,
              1.0,
            ],*/
            colors: [
              Colors.white,
              //Color(0xFFD8D8D8),
              //Color(0xFFAAAAAA),
              Theme.of(context).colorScheme.background.withOpacity(0.5),
              //Theme.of(context).colorScheme.background.withOpacity(0.6),
              //Colors.white,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.loyalty,
                          size: 90.0,
                          color: Theme.of(context).textTheme.headline1?.color,
                        ),
                        Text(
                          'กรอกเลขที่ต้องการ',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        SizedBox(height: 6.0),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //for (var i = 0; i < input.length; i++)
                        Text('$input'),
                        //for (var i = input.length; i < 6; i++)
                        //  Container(
                        //  margin: EdgeInsets.all(4.0),
                        //  width: 24.0,
                        //  height: 24.0,
                        // decoration: BoxDecoration(
                        // color: Theme.of(context)
                        //    .colorScheme
                        //  .primary
                        //  .withOpacity(0.2),
                        // shape: BoxShape.circle,


                      ],
                    )
                  ],
                ),
              ),
              _buildNumPad(),
            ],
          ),
        ),
      ),


    );
  }
}


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static const pin = '123456';
  var input = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            /*stops: [
              0.0,
              0.95,
              1.0,
            ],*/
            colors: [
              Colors.white,
              //Color(0xFFD8D8D8),
              //Color(0xFFAAAAAA),
              Theme.of(context).colorScheme.background.withOpacity(0.5),
              //Theme.of(context).colorScheme.background.withOpacity(0.6),
              //Colors.white,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.loyalty,
                          size: 90.0,
                          color: Theme.of(context).textTheme.headline1?.color,
                        ),
                        Text(
                          'กรอกเลขที่ต้องการ',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        SizedBox(height: 6.0),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (var i = 0; i < input.length; i++)
                          Container(
                            margin: EdgeInsets.all(4.0),
                            width: 24.0,
                            height: 24.0,
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                shape: BoxShape.circle),
                          ),
                        for (var i = input.length; i < 6; i++)
                          Container(
                            margin: EdgeInsets.all(4.0),
                            width: 24.0,
                            height: 24.0,
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withOpacity(0.2),
                              shape: BoxShape.circle,
                            ),
                          ),
                      ],
                    )
                  ],
                ),
              ),
              _buildNumPad(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNumPad() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          [1, 2, 3],
          [4, 5, 6],
          [7, 8, 9],
          [-2, 0, -1],
        ].map((row) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: row.map((item) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: LoginButton(
                  number: item,
                  onClick: () {
                    _handleClickButton(item);
                  },
                ),
              );
            }).toList(),
          );
        }).toList(),
      ),
    );
  }


  void _handleClickButton(int num) {
    print('You pressed $num');

    setState(() {
      if (num == -1) {
        if (input.length > 0) input = input.substring(0, input.length - 1);
      } else {
        input = '$input$num';
      }

      if (input.length == pin.length) {
        if (input == pin) {
          //Pinapi();
          _showMaterialDialog('YES', 'Invalid PIN. Please try again.');
        } else {
          _showMaterialDialog('ERROR', 'Invalid PIN. Please try again.');
        }

        input = '';
      }
    });
  }

  void _showMaterialDialog(String title, String msg) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(msg, style: Theme.of(context).textTheme.bodyText2),
          actions: [
            // ปุ่ม OK ใน dialog
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                // ปิด dialog
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class LoginButton extends StatelessWidget {
  final int number;
  final Function() onClick;

  const LoginButton({
    required this.number,
    required this.onClick,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: CircleBorder(),
      onTap: number == -2 ? null : onClick,
      child: Container(
        width: 75.0,
        height: 75.0,
        decoration: number == -2
            ? null
            : BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withOpacity(0.5),
          border: Border.all(
            width: 3.0,
            color: Theme.of(context).textTheme.headline1!.color!,
          ),
        ),
        child: Center(
          child: number >= 0
              ? Text(
            '$number', // number.toString()
            style: Theme.of(context).textTheme.headline6,
          )
              : (number == -1
              ? Icon(
            Icons.backspace_outlined,
            size: 28.0,
          )
              : SizedBox.shrink()),
        ),
      ),
    );
  }
}







