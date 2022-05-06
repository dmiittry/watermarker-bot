import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flyapp/auth/auth.dart';
import 'package:flyapp/auth/login.dart';
import 'package:flyapp/auth/register.dart';
import 'package:flyapp/auth/sms.dart';
import 'package:flyapp/info/InfoPage.dart';
import 'package:flyapp/list/ListPage.dart';
import 'package:flyapp/profile/bonus.dart';
import 'package:flyapp/profile/feedback.dart';
import 'package:flyapp/profile/information.dart';
import 'package:flyapp/profile/notic.dart';
import 'package:flyapp/profile/profile.dart';
import 'package:flyapp/profile/story.dart';
import 'package:flyapp/profile/storyItem.dart';
import 'package:flyapp/profile/user.dart';
import 'package:flyapp/recording/record.dart';
import 'package:flyapp/splash.dart';
import 'package:provider/provider.dart';

import 'buy/buy.dart';
import 'const/provider.dart';
import 'item/ItemPage.dart';
import 'main/MainPage.dart';

void main() async {
  runApp(
    ChangeNotifierProvider<Prov>(
      create: (context) => Prov(),
      child: MaterialApp(
        // home: SplashScreen(),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('ru', ''),
        ],
        theme: ThemeData(fontFamily: 'Montserrat'),
        initialRoute: '/',
        routes: {
          '/': (context) => MainPage(),
          '/story': (context) => StoryPage(),
          '/bonus': (context) => BonusPage(),
          '/notic': (context) => NoticPage(),
          '/user': (context) => UserPage(),
          '/information': (context) => InformationPage(),
          '/feedback': (context) => FeedBackPage(),
          '/story/item': (context) => StoryItemPage(),
          '/register': (context) => RegisterPage(),
          '/register/sms': (context) => SmsPage(),
          '/profile': (context) => ProfilePage(),
          '/login': (context) => LoginPage(),
          '/login/auth': (context) => AuthPage(),
          '/list': (context) => ListPage(),
          '/list/item': (context) => ItemPage(),
          '/list/item/info': (context) => InfoPage(),
          '/list/item/info/buy': (context) => BuyPage(),
        },
      ),
    ),
  );
}

//  flutter build apk --split-per-abi