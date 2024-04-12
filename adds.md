# SHOW BANNER AD IN FLUTTER

In this section, you will learn how to show banner ad in flutter. You will learn how to integrate admob banner ad in flutter with these steps:

**Step 1: Create Flutter Project**

First of all, create a flutter project with the name my_admob_app. To create a flutter project, open the command prompt and type the following command.

`flutter create my_admob_app`

**Step 2: Add Admob Package**

Now, open your project in android studio and add the admob package in your project. To add the admob package, open the pubspec.yaml file and add the following code in it.

`flutter pub add google_mobile_ads  `

**Step 3: Add Admob App Id**

Now, open the android folder and add the admob app id in the AndroidManifest.xml file. To get the admob app id, go to the admob website and create an account. After creating an account, create an app will appear and you have to click it, after that get the app id from there then add the app id in the AndroidManifest.xml file.

- Add Internet Permission

Open the AndroidManifest.xml file and add the following code inside the tag.

`<uses-permission android:name="android.permission.INTERNET"/>`

`<uses-permission android:name="com.google.android.gms.permission.AD_ID"/>`

- Open AndroidManifest.xml File And Add Code

Now, open the AndroidManifest.xml file and add the following code inside the tag. You can find the value of the app id in the admob website.

<!-- For Admob. change the value to your own Admob App ID -->

```
<meta-data
android:name="com.google.android.gms.ads.APPLICATION_ID"
android:value="ca-app-pub-3940256099942544~3347511713"/>
```

**Change Minimum SDK Version**

After adding google_mobile_ads, you need to make sure that your app is using Android SDK version 19 or higher. Open my_admob_app\android\app\build.gradle and inside defaultConfig, change the minimum SDK version to 19. Also set multiDexEnabled to true.

```
defaultConfig {
        minSdkVersion 19
        multiDexEnabled true
     }
```

**Create Banner Ad Widget**

Now, create a banner ad widget. To create a banner ad widget, lets create a file ad.dart inside the lib folder and add the following code in it.

```
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

// Class to manage ads
class AdManager {
  // Replace with your own Ad Unit ID
  static const String bannerAdUnitId = 'ca-app-pub-3940256099942544/6300978111';

  // Banner ad instance
  BannerAd? myBanner;

  // Initialize banner ad
  void initialize() {
    myBanner = createBannerAd();
  }

  // Create a BannerAd
  BannerAd createBannerAd() {
    return BannerAd(
      adUnitId: bannerAdUnitId,
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        // Event handlers for the ad lifecycle
        onAdLoaded: (Ad ad) => debugPrint('Ad loaded.'),
        onAdFailedToLoad: (Ad ad, LoadAdError error) =>
            debugPrint('Ad failed to load: $error'),
        onAdOpened: (Ad ad) => debugPrint('Ad opened.'),
        onAdClosed: (Ad ad) => debugPrint('Ad closed.'),
        onAdImpression: (Ad ad) => debugPrint('Ad impression.'),
      ),
    );
  }
}
```

**Add Banner Ad Widget**

Finally, add the banner ad widget in your flutter application. To add the banner ad widget, open the main.dart file and add the following code in it.

```
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'ad.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Admob',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Instance of AdManager
  final AdManager adManager = AdManager();

  // Banner ad instance
  late BannerAd myBanner;

  @override
  void initState() {
    super.initState();
    // Initialize AdManager and load the banner ad
    adManager.initialize();
    myBanner = adManager.myBanner!;
    myBanner.load();
  }

  @override
  void dispose() {
    super.dispose();
    // Dispose of the banner ad when it's no longer needed
    myBanner.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Admob Example"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Display the banner ad
            SizedBox(
              height: 50,
              child: AdWidget(ad: myBanner),
            ),
          ],
        ),
      ),
    );
  }
}
```

**Run Flutter App**

Finally, run your flutter app using the following command.

`flutter run`



## SHOW INTERSTITIAL AD IN FLUTTER
In this section, you will learn how to show interstitial ad in flutter. You will learn how to integrate admob interstitial ad in flutter with step by step tutorial.

Step 1: Create Flutter Project
First of all, create a flutter project. Let’s create a flutter project with the name my_admob_app. To create a flutter project, open the command prompt and type the following command.

flutter create my_admob_app
Step 2: Add Admob Package
Now, open your project in android studio and add the admob package in your project. To add the admob package, open the pubspec.yaml file and add the following code in it.

flutter pub add google_mobile_ads  
Step 3: Add Admob App Id
Now, open the android folder and add the admob app id in the AndroidManifest.xml file. To get the admob app id, go to the admob website and create an account. After creating an account, create an app will appear and you have to click it, after that get the app id from there. Now, add the app id in the AndroidManifest.xml file.

Add Internet Permission
Open the AndroidManifest.xml file and add the following code inside the tag.

<uses-permission android:name="android.permission.INTERNET"/>
<uses-permission android:name="com.google.android.gms.permission.AD_ID"/>
Open AndroidManifest.xml File And Add Code
Now, open the AndroidManifest.xml file and add the following code inside the tag. You can find the value of the app id in the admob website.

<!-- For Admob. change the value to your own Admob App ID -->
<meta-data
android:name="com.google.android.gms.ads.APPLICATION_ID"
android:value="ca-app-pub-3940256099942544~3347511713"/>
Change Minimum SDK Version
After adding google_mobile_ads, you need to make sure that your app is using Android SDK version 19 or higher. Open my_admob_app\android\app\build.gradle and inside defaultConfig, change the minimum SDK version to 19. Also set multiDexEnabled to true.

defaultConfig {
        minSdkVersion 19
        multiDexEnabled true
     }
Create Interstitial Ad Widget
Now, create a interstitial ad widget. To create a interstitial ad widget, create a new file named ad.dart and add the following code in it.

import 'package:google_mobile_ads/google_mobile_ads.dart';

// Class to manage ads
class AdManager {
  // Replace with your own Interstitial Ad Unit ID
  static const String interstitialAdUnitId = 'ca-app-pub-3940256099942544/1033173712';

  // Interstitial ad instance
  InterstitialAd? myInterstitialAd;
  // Flag to keep track of whether interstitial ad is ready
  bool isInterstitialAdReady = false;

  // Initialize interstitial ad
  void initialize() {
    createInterstitialAd();
  }

  // Create an InterstitialAd
  void createInterstitialAd() {
    InterstitialAd.load(
      adUnitId: interstitialAdUnitId,
      request: AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (InterstitialAd ad) {
          // Keep a reference to the ad so you can show it later
          myInterstitialAd = ad;
          isInterstitialAdReady = true;

          ad.fullScreenContentCallback = FullScreenContentCallback(
            // Reload the ad when it's dismissed
            onAdDismissedFullScreenContent: (InterstitialAd ad) {
              createInterstitialAd();
            },
          );
        },
        onAdFailedToLoad: (LoadAdError error) {
          print('InterstitialAd failed to load: $error');
        },
      ),
    );
  }

  // Show the interstitial ad if it's ready
  void showInterstitialAd() {
    if (myInterstitialAd == null) {
      print('Warning: attempt to show interstitial before loaded.');
      return;
    }
    myInterstitialAd!.show();
    myInterstitialAd = null;
    isInterstitialAdReady = false;
  }
}
Add Interstitial Ad Widget In Main.dart File
Finally, add the interstitial ad widget in the main.dart file. To add the interstitial ad widget, open the main.dart file and add the following code in it.

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'ad.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Admob',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Instance of AdManager
  final AdManager adManager = AdManager();

  @override
  void initState() {
    super.initState();
    // Initialize AdManager and load the interstitial ad
    adManager.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Admob Example"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Button to show the interstitial ad
            ElevatedButton(
              onPressed: () {
                if (adManager.isInterstitialAdReady) {
                  adManager.showInterstitialAd();
                }
              },
              child: const Text('Show Interstitial Ad'),
            ),
          ],
        ),
      ),
    );
  }
}
Run Flutter App
Finally, run your flutter app using the following command.

flutter run
Conclusion
In this tutorial, you learned how to show interstitial ad in flutter and how to integrate admob interstitial ad in flutter with this tutorial. Additionally, you now know how to make a flutter interstitial ad widget. Now, you can show interstitial ad in your flutter app.