import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:e_commerce_app_project/component/drower.dart';
import 'package:e_commerce_app_project/modules/phone/phone_product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PhonesApp extends StatefulWidget {
  const PhonesApp({Key? key}) : super(key: key);

  @override
  _PhonesAppState createState() => _PhonesAppState();
}

class _PhonesAppState extends State<PhonesApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text("Mobile Phone Products"),

      ),
      drawer: Drower(),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: Carousel(
              images: [
                Image.asset('assets/images/phone.jpg',fit: BoxFit.fill,),
                Image.asset('assets/images/phone1.jpg',fit: BoxFit.fill,),
                Image.asset('assets/images/phone2.jpg',fit: BoxFit.fill,),
                Image.asset('assets/images/phone3.jpg',fit: BoxFit.fill,),
                Image.asset('assets/images/phone4.jpg',fit: BoxFit.fill,),

              ],
              boxFit: BoxFit.cover,
              dotSize: 5,
              autoplay: true,
              autoplayDuration: Duration(seconds: 5),

            ),
          ),
          Divider(
            thickness: 1,
            height: 15,
          ),
          Container(
              alignment: AlignmentDirectional.centerStart,
              margin: const EdgeInsets.only(
                  left: 15
              ),
              padding:const EdgeInsets.only(
                  bottom: 20,
                  top: 10
              ) ,
              child: Text('All Mobile Phone Products ',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline
              ),)),
          Divider(
            thickness: 3,
          ),
          PhoneProducts()




        ],
      ),
    );
  }
}