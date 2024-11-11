import 'package:flutter/material.dart';

List<Map> myMap = [
  {
    'title':
        '000(اللَّهُمَّ اجْعَلْ فِي قَلْبِي نُوراً، وَفِي لِسَانِي نُوراً، وَفِي سَمْعِي نُوراً، وَفِي بَصَرِي نُوراً، وَمِنْ فَوْقِي نُوراً، وَمِنْ تَحْتِي نُوراً، وَعَنْ يَمِينِي نُوراً، وَعَنْ شِمَالِي نُوراً، وَمِنْ أَمَامِي نُوراً، وَمِنْ خَلْفِي نُوراً، وَاجْعَلْ فِي نَفْسِي نُوراً، وَأَعْظِمْ لِي نُوراً، وَعَظِّم لِي نُوراً، وَاجْعَلْ لِي نُوراً، وَاجْعَلْنِي نُوراً، اللَّهُمَّ أَعْطِنِي نُوراً، وَاجْعَلْ فِي عَصَبِي نُوراً، وَفِي لَحْمِي نُوراً، وَفِي دَمِي نُوراً، وَفِي شَعْرِي نُوراً، وَفِي بَشَرِي نُوراً) ([اللَّهُمَّ اجْعَلْ لِي نُوراً فِي قَبْرِي... وَنُوراً فِي عِظَامِي])[(وَزِدْنِي نُوراً، وَزِدْنِي نُوراً، وَزِدْنِي نُوراً)] [(وَهَبْ لِي نُوراً عَلَى نُورٍ)]',
    'body':
        'من قالها حين يصبح أجير من الجن حتي يمسي ومن قالها حين يمسي أجير من الجن حتي يصبح',
    'count': 10
  },
  {
    'title':
        '111(اللَّهُمَّ اجْعَلْ فِي قَلْبِي نُوراً، وَفِي لِسَانِي نُوراً، وَفِي سَمْعِي نُوراً، وَفِي بَصَرِي نُوراً، وَمِنْ فَوْقِي نُوراً، وَمِنْ تَحْتِي نُوراً، وَعَنْ يَمِينِي نُوراً، وَعَنْ شِمَالِي نُوراً، وَمِنْ أَمَامِي نُوراً، وَمِنْ خَلْفِي نُوراً، وَاجْعَلْ فِي نَفْسِي نُوراً، وَأَعْظِمْ لِي نُوراً، وَعَظِّم لِي نُوراً، وَاجْعَلْ لِي نُوراً، وَاجْعَلْنِي نُوراً، اللَّهُمَّ أَعْطِنِي نُوراً، وَاجْعَلْ فِي عَصَبِي نُوراً، وَفِي لَحْمِي نُوراً، وَفِي دَمِي نُوراً، وَفِي شَعْرِي نُوراً، وَفِي بَشَرِي نُوراً) ([اللَّهُمَّ اجْعَلْ لِي نُوراً فِي قَبْرِي... وَنُوراً فِي عِظَامِي])[(وَزِدْنِي نُوراً، وَزِدْنِي نُوراً، وَزِدْنِي نُوراً)] [(وَهَبْ لِي نُوراً عَلَى نُورٍ)]',
    'body':
        'من قالها حين يصبح أجير من الجن حتي يمسي ومن قالها حين يمسي أجير من الجن حتي يصبح',
    'count': 5
  },

];
extension NotNullString on String?{
  String orEmpty(){
    if(this==null)
      return 'لا يوجد';
    else
      return this!;
  }
}
extension NotNullInt on int?{
  int orZero(){
    if(this==null)
      return 0;
    else
      return this!;
  }
}
int? text;
class AthkarScreen extends StatelessWidget {
  const AthkarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
        title: Text('${text.orZero()}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Directionality(textDirection: TextDirection.rtl,
          child: ListView.builder(
            itemCount: myMap.length,
            itemBuilder: (BuildContext context, int index) {
            return  ThikerWidget(i: index,);
          },

          ),
        ),
      ),
    );
  }
}

class ThikerWidget extends StatelessWidget {
   ThikerWidget({
    super.key,required this.i
  });
final int i;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),boxShadow: [BoxShadow(offset: Offset(0, 3),blurRadius: 5,color: Colors.black.withOpacity(0.25))]),
      height: 323,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(30),
            width: double.infinity,
            height: 190,
            child: Text(
              myMap[i]['title'],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10, color: Color(0xff005773)),
            ),
            decoration: BoxDecoration(
                color: Color(0xffEDFBFF),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8))),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
                end: 57.0, start: 8, top: 22.8, bottom: 10),
            child: Text(myMap[i]['body'],
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 10,
                  color: Color(0x445773B2),
                )),
          ),

        ],
      ),
    );
  }
}
