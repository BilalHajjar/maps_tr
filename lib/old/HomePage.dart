import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<Map> myMap = [
    {'text': 'الفجر', 'icon': Icons.nightlight, 'isSelect': false},
    {'text': 'الظهر', 'icon': Icons.sunny, 'isSelect': false},
    {'text': 'العصر', 'icon': Icons.nights_stay_outlined, 'isSelect': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('12 الثلاثاء ديسمبر 2023'),
                      Text('الأحد ربيع الأول 1445'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('المكان'),
                      Text('القاهرة، مصر'),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              ChangeTimeWidget(myMap: myMap),
            ],
          ),
        ),
      ),
    );
  }
}

class ChangeTimeWidget extends StatefulWidget {
  const ChangeTimeWidget({
    super.key,
    required this.myMap,
  });

  final List<Map> myMap;

  @override
  State<ChangeTimeWidget> createState() => _ChangeTimeWidgetState();
}

class _ChangeTimeWidgetState extends State<ChangeTimeWidget> {
  change({required i}) {
    for (int j = 0; j < widget.myMap.length; j++) {
      widget.myMap[j]['isSelect'] = false;
    }
    setState(() {
      widget.myMap[i]['isSelect'] = true;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 87,
      color: Color(0xffEDFBFF),
      child: Center(
        child:
          ListView.separated(
              scrollDirection : Axis. horizontal,
              itemCount:  widget.myMap.length,
              itemBuilder: (context,i){
            return InkWell(
                onTap: () {
                  change(
                    i: i,
                  );
                },
                child: TimeWidget(
                  txt: widget.myMap[i]['text'],
                  icn: widget.myMap[i]['icon'],
                  isSelect: widget.myMap[i]['isSelect'],
                ));
          }, separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 50,);
          },),
      ),
    );
  }
}

class TimeWidget extends StatelessWidget {
  TimeWidget(
      {super.key,
      required this.txt,
      required this.icn,
      required this.isSelect});

  final IconData icn;
  final String txt;
  final bool isSelect;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 50,
      decoration: BoxDecoration(
          color: isSelect ? Colors.blue : null,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icn,
            color: isSelect ? Colors.white : Color(0xee57738F),
            size: 18,
          ),
          Text(
            '$txt',
            style: TextStyle(
                color: isSelect ? Colors.white : Color(0xee57738F),
                fontSize: 16),
          ),
        ],
      ),
    );
  }
}
