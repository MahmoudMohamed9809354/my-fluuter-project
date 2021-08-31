import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:e_commerce_app_project/component/drower.dart';

import 'package:e_commerce_app_project/shared/api/api_method.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'electronic_product.dart';

class ElectronicApp extends StatefulWidget {
  const ElectronicApp({Key? key}) : super(key: key);

  @override
  _ElectronicAppState createState() => _ElectronicAppState();
}

class _ElectronicAppState extends State<ElectronicApp> {
//Todo App
  RestApi api = RestApi();
  @override
  void initState() {
    api.fetchData(3);
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text("Electronic Products"),

      ),
      drawer: Drower(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: Carousel(
                images: [
                  Image.asset('assets/images/elec.jpg', fit: BoxFit.fill,),
                  Image.asset('assets/images/elec1.jpg', fit: BoxFit.fill,),
                  Image.asset('assets/images/elec2.jpg', fit: BoxFit.fill,),
                  Image.asset('assets/images/elec3.jpg', fit: BoxFit.fill,),


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
                padding: const EdgeInsets.only(
                    bottom: 20,
                    top: 10
                ),
                child: Text('All Electronics Products', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline
                ),)),
            Divider(
              thickness: 3,
            ),
            ElectricsProducts()


          ],
        ),
      ),
    );
  }
}