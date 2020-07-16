import 'dart:io';

import 'package:firebase_admob/firebase_admob.dart';

class AdMobService {

  String getAdMobAppId() {
   if (Platform.isAndroid) {
      return 'ca-app-pub-7945386553891976~9259197404';
    }
    return null;
  }

  String getBannerAdId() {
   if (Platform.isAndroid) {
      return 'ca-app-pub-7945386553891976/8274893576';
    }
    return null;
  }
  String getInterstitialAdId() {
   if (Platform.isAndroid) {
      return 'ca-app-pub-7945386553891976/6725189946';
    }
    return null;
  }
   InterstitialAd getNewTripInterstitial() {
    return InterstitialAd(
      adUnitId: getInterstitialAdId(),
      listener: (MobileAdEvent event) {
        print("InterstitialAd event is $event");
      },
    );
  }

}