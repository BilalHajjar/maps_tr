import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 20,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
                    gradient: LinearGradient(colors: [
                      Colors.deepOrange.withOpacity(0.7),
                      Colors.deepOrange
                    ], begin: Alignment.topLeft)),
                margin: EdgeInsets.symmetric(vertical: 5),
                // color: Colors.red ,
                // width: 200,
                padding:EdgeInsets.all(5) ,
                constraints: BoxConstraints(
                    minWidth: 0,
                    maxWidth: MediaQuery.of(context).size.width - 50 * 2),
                child: Text(
                    'asdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdasasdas',style: TextStyle(),),
              ),
            ],
          );
        },
        itemCount: 50, separatorBuilder: (BuildContext context, int index) { return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
                  gradient: LinearGradient(colors: [
                    Colors.grey.withOpacity(0.7),
                    Colors.grey
                  ], begin: Alignment.topLeft)),
              margin: EdgeInsets.symmetric(vertical: 5),
              // color: Colors.red ,
              // width: 200,
              padding:EdgeInsets.all(5) ,
              constraints: BoxConstraints(
                  minWidth: 0,
                  maxWidth: MediaQuery.of(context).size.width - 50 * 2),
              child: Text(
                'any text',style: TextStyle(color: Colors.white),),
            ),
          ),CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 20,
          ),
        ],
      ); },
      ),
    );
  }
}
