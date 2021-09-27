import 'package:flutter/material.dart';

class FirstUI extends StatelessWidget {
  const FirstUI({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text(
          
          'First UI >_<',
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.yellow[900],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'สหสวรรษ วิทยาประสิทธิ์',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            Text(
              '6252410012',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
          
          ],
        ),
      ),


    );

  }
}