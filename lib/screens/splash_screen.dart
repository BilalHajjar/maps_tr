import 'package:flutter/material.dart';
import 'package:untitled2/screens/categories_screen.dart';

const Color mainColors = Color(0xff2D0C57);

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Color(0xffF6F5F5),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 52,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.account_box_rounded,
                          color: mainColors,
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
                            color: mainColors,
                            fontWeight: FontWeight.bold,
                            fontSize: 34),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        'When placing an order, select the option\n “Contactless delivery” and the courier will leave\n your order at the door.',
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: Color(0xff9586A8), fontSize: 14),
                      ),
                      SizedBox(
                        height: 48,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return CategoriesScreen();
                          }));
                        },
                        child: Container(
                          width: double.infinity,
                          height: 56,
                          decoration: BoxDecoration(
                              color: Color(0xff0BCE83),
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                              child: Text(
                            'order now',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
