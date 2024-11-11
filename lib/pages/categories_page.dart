import 'package:flutter/material.dart';
import 'package:untitled2/core/color.dart';

List<Map<String, dynamic>> allProducts = [
  {
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmCy16nhIbV3pI1qLYHMJKwbH2458oiC9EmA&s',
    'product': 'Fruit',
    'count': 43
  },
  {
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO8AAxAr9ZNr9JCwn2QZ35rSWWuiayhh0ayQ&s',
    'product': 'Vegetables ',
    'count': 26
  },
  {
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0Gm7iDyKB4FY_HNqS1wxRUalz4ywmRTKqiQ&s',
    'product': 'Sweets',
    'count': 66
  },
  {
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLQUQ6g6NjGqj3qncgsJGpxzzRrL_qDAc1qQ&s',
    'product': 'Bread',
    'count': 50
  },
  {
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxljCiU3pRUXpw-39aklTNk7BDV3G9Dn7ocw&s',
    'product': 'Coffee',
    'count': 22
  },
  {
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEQO2ga7Jsm-619O8lg9wp5S0uZtqppyDakw&s',
    'product': 'Milk',
    'count': 15
  },
];

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F5F5),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
      ),
      body: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            itemCount: allProducts.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 177/211
            ),
            itemBuilder: (BuildContext context, int index) {
              return Container(

                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(offset: Offset(0, 3),blurRadius: 5,color: Colors.black.withOpacity(0.25))],
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.whiteColor),

                child: Column(
                  children: [
                    ClipRRect(
                borderRadius:BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                        child: Image.network(allProducts[index]['image'],fit:BoxFit.cover,height: 144,)),
                    Text(allProducts[index]['product']),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
