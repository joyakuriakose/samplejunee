import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:samplejunee/Bottomnavbar.dart';
import 'package:samplejunee/Gridview/customgridview.dart';
import 'package:samplejunee/Gridview/staggereddview.dart';
import 'package:samplejunee/ListSeparated.dart';
import 'package:samplejunee/MyList.dart';
import 'package:samplejunee/Route/home.dart';
import 'package:samplejunee/Screen/gallery.dart';
import 'package:samplejunee/Screen/homepage.dart';
import 'package:samplejunee/SignupPage.dart';
import 'package:samplejunee/UI_designs/articlelist.dart';
import 'package:samplejunee/UI_designs/dlfhealthy.dart';
import 'package:samplejunee/UI_designs/farmersshop.dart';
import 'package:samplejunee/UI_designs/hotel/bookingdetails/bookinghome.dart';
import 'package:samplejunee/UI_designs/hotel/home_page/components/appbarsliver.dart';
import 'package:samplejunee/UI_designs/hotel/home_page/components/detailsview.dart';
import 'package:samplejunee/UI_designs/hotel/home_page/home_screen.dart';
import 'package:samplejunee/UI_designs/hotel/room_designs/roompage.dart';
import 'package:samplejunee/UI_designs/loginui.dart';
import 'package:samplejunee/UI_designs/orderdetails.dart';
import 'package:samplejunee/UI_designs/profile_ui/profilemainpage.dart';
import 'package:samplejunee/bottomsheet.dart';
import 'package:samplejunee/bottomsheet1.dart';
import 'package:samplejunee/citiesimages.dart';
import 'package:samplejunee/customappbar.dart';
import 'package:samplejunee/customlist.dart';
import 'package:samplejunee/customtabbar.dart';
import 'package:samplejunee/expaandable.dart';
import 'package:samplejunee/expaanddone.dart';
import 'package:samplejunee/expaandfirst.dart';
import 'package:samplejunee/expanded.dart';
import 'package:samplejunee/login.dart';
import 'package:samplejunee/lotanimat.dart';
import 'package:samplejunee/onboarding.dart';
import 'package:samplejunee/registervalidation.dart';
import 'package:samplejunee/snackbar.dart';
import 'package:samplejunee/splashscreen.dart';
import 'package:samplejunee/stagg.dart';
import 'package:samplejunee/validationform.dart';


import 'Customgriddview.dart';
import 'ListViewbuilder.dart';
import 'Route/registration.dart';
import 'Route/settings.dart';
import 'bottomsheet2.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    SystemUiOverlay.bottom,
  ]);  //3 line code for clear time showing entire app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:ProfileMainPage(),
      routes: {
        'settings': (BuildContext ctx) => const SettingsPage(),
        'registration': (BuildContext ctx) => RegistrationPage(),
      },

    );
  }
}

