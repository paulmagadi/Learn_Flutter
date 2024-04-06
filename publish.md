PUBLISH FLUTTER APP ON APP STORE
Introduction
This section will help you to learn how to publish app on app store(iOS) step by step.

Requirements
Before publishing andriod app to app store make sure you have the following requirements.

App Logo (1024x1024px)
Screenshots iPhone(“6.7,6.5,5.5”), iPad(“12.9 6th Gen, 12.9 2nd Gen”)
App Name, Description, Short Description, Subtitle, Category, Sub category, Pricing
App Private Policy
Support URL
Marketing URL
About Us
Flutter App
Apple developer account enrolled in developer program
Mac that supports Xcode
Xcode latest version
Step 1: Create certificate
Create a certificate in app developer then fill the form
Download and install certificate
Step 2: Get identifier
Click the identifiers
Fill the form i.e., create the bundle id
Go to Apps and click new app
Fill the form(name, bundle id)
Step 3: Define the signing key
Open the project
Fill the data form in Sign In
You have to define the signing key (by signing the developer account in Xcode automatically signing will be happen)
Step 4: Update App Icon
Open Andriod Studio and click ios
Go to runnner and put the image of you app icon in assets.xcassets
Step 5: Upload your App
Go to Xcode and click the Build then click archive.
After clicking archive the app will directly come to the TestFlight.
After that, go to the AppStore and click Add Build then again click the app and click done button.
If you have any remaning to fill the form you can check and fill it like Description,Support URL, Marketing URL, Contact Information.
Put the link of App Privacy Policy
Click to Add for Review
 Info
Note: After 2, 3 business days your app will be approved after reviewing and it will be publishes


PUBLISH FLUTTER APP ON PLAY STORE
How to Publish App On Play Store
This section will help you to learn how to publish app on play store step by step.

Requirements
Before publishing android app to google play store make sure you have the following requirements.

App Logo (512x512px)
App Banner (1024x500px)
Screenshots for mobile, tablet, and Chromebook (1920x1024px, 16:9 ratio)
App signing key (key.jks and key.properties)
App Name and Description
Privacy Policy
About Us
App Video (optional)
App Bundle
Verified Google Play Console Account
Step 1: Generate App Icon
Generate Icon from App Icon Generator
Paste the generated icon in android/app/src/main/res folder.
Step 2: Create KeyStore File
You can paste the following command in the terminal to generate keystore file.

keytool -genkey -v -keystore ~/upload-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload
Enter the password and other details.
You will get upload-keystore.jks file in your home directory.
In my case location is

C:/Users/iambi/upload-keystore.jks
Step 3: Create Key Properties File
Create a file named key.properties in the android folder and paste the following code.

storePassword=<password-from-previous-step>
keyPassword=<password-from-previous-step>
keyAlias=upload
storeFile=<keystore-file-location>
Step 4: Update Build Gradle File
Now open the android/app/build.gradle file and paste the following code.

def keystoreProperties = new Properties()
def keystorePropertiesFile = rootProject.file('key.properties')
if (keystorePropertiesFile.exists()) {
       keystoreProperties.load(new FileInputStream(keystorePropertiesFile))
}

android {
         ...
}
Also, update the signingConfigs and buildTypes section.

signingConfigs {
       release {
           keyAlias keystoreProperties['keyAlias']
           keyPassword keystoreProperties['keyPassword']
           storeFile keystoreProperties['storeFile'] ? file(keystoreProperties['storeFile']) : null
           storePassword keystoreProperties['storePassword']
       }
}
buildTypes {
       release {
           signingConfig signingConfigs.release
    }
}
Step 5: Change App Name
Open the android/app/src/main/AndroidManifest.xml file and change the android:label value.

<manifest xmlns:android="http://schemas.android.com/apk/res/android">
    <application
        android:label="Your App Name"
        android:icon="@mipmap/ic_launcher">
Step 6: Change App ID
Open the android/app/build.gradle file and change the applicationId value.

defaultConfig {
    applicationId "com.example.app"
    ...
}
Step 7: Build Signed App Bundle on VS Code:

flutter build appbundle
-Alternatively,you Use Android Studio to build a signed app bundle.

Step 8: Publish and Release for Google Review
Fill the necessary details under section of “Set up your app”.

Goto Create and Publish a Release(app bundle ) and Submit the release for Google’s review.

After Google’s review, if no issues are found, your app will be ready for publishing.