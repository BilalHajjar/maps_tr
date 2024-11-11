import 'package:flutter/material.dart';

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

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xffF6F5F5),
        leading: Icon(Icons.arrow_back_ios_new_outlined),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Text('data'),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Search',
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(27))),
            ),
            SizedBox(
              height: 42,
            ),
            Expanded(
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: allProducts.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 177 / 211,
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20),
                  itemBuilder: (_, i) {
                    return Container(
                      decoration: BoxDecoration(
                        boxShadow: [BoxShadow(offset: Offset(0, 3),color: Colors.black.withOpacity(0.25),blurRadius: 5)],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8),
                                topLeft: Radius.circular(8)),
                            child: Image(
                              image: NetworkImage(
                                allProducts[i]['image'],
                              ),
                              height: 130,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              allProducts[i]['product'],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              allProducts[i]['count'].toString(),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(elevation: 5, items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined), label: 'category'),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_rounded), label: 'card'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
      ]),
    );
  }
}
