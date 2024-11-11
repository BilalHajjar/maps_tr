import 'package:flutter/material.dart';
import 'package:untitled2/core/color.dart';
import 'package:untitled2/pages/categories_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA259FF),
      body: Stack(
        children: [
          Image.asset('asset/img.png'),
          Column(
            children: [
              Spacer(),
              Container(
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Color(0xffF6F5F5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 52,
                        child: Icon(
                          Icons.library_add_rounded,
                          color: AppColor.mainColor,
                          size: 40,
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        'Non-Contact\nDeliveries',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColor.mainColor,
                            fontSize: 34,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        'When placing an order, select the option “Contactless delivery” and the courier will leave your order at the door.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColor.secondColor,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 48,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CategoriesPage()));
                        },
                        child: Container(
                          width: double.infinity,
                          height: 56,
                          decoration: BoxDecoration(
                            color: Color(0xff0BCE83),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                              child: Text(
                            'ORDER NOW',
                            style: TextStyle(
                                color: AppColor.whiteColor, fontSize: 15),
                          )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
