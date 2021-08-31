import 'package:bloc/bloc.dart';
import 'package:e_commerce_app_project/shared/cubit/bloc_observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'component/product_detail.dart';
import 'component/purcase_list.dart';
import 'modules/baby/baby.dart';
import 'modules/electronic/electronic.dart';
import 'modules/fashion.dart';
import 'modules/home.dart';
import 'modules/login.dart';
import 'modules/page_view.dart';
import 'modules/phone/phone.dart';
import 'modules/product_detail.dart';
import 'modules/register.dart';
import 'modules/settign.dart';
import 'modules/splash.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      routes: {
        "/" : (context)=> SplashScreen(),
        "/pageView" : (context)=> PageIntro(),
        "/loginPage" : (context)=> LoginPage(),
        "/home" : (context)=> HomePage(),
        "/fashionApp" : (context)=> FashionScreen(),
        "/electronicApp" : (context)=> ElectronicApp(),
        "/babyApp" : (context)=> BabyApp(),
        "/phoneApp" : (context)=> PhonesApp(),
        "/Register" : (context)=> RegisterPage(),
        "/productDetails" : (context)=> ProductDetails(),
        "/setting" : (context)=> Setting(),
        "/babyDetails" : (context)=> AllProductDetails(),
        "/purchaseAll" : (context)=> PurchaseList(),
        PurchaseList.id : (context)=> PurchaseList(),
      },
    );
  }
}