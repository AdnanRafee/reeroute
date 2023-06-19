import 'package:get/get.dart';

class LocalString extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'Welcome to Reeroute': 'Welcome it works',
        },
        'hi_IN': {
          'Welcome to Reeroute.': 'रीरूट में आपका स्वागत है।',
          'Start': 'शुरू',
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry':
              'लोरेम इप्सम प्रिंटिंग और टाइपसेटिंग उद्योग का केवल डमी टेक्स्ट है',
          'Lorem Ipsum headline': 'बहुत अच्छी हेडलाइन',
          'Please connect to Internet': 'बहुत अच्छी हेडलाइन',
          'Enter your mobile number': "अपना मोबाइल संख्या दर्ज करे",
          'Your phone number is required to sign you in or create a new account on ReeRoute':
              'रीरूट पर आपको साइन इन करने या एक नया खाता बनाने के लिए आपका फ़ोन नंबर आवश्यक है',
          'Allow ReeRoute to send updates on offers through whatsApp':
              'रीरूट को व्हाट्सएप के माध्यम से ऑफर्स पर अपडेट भेजने की अनुमति दें',
          'By continuing, you accept our Terms & Conditions':
              'जारी रखकर आप हमारे नियमों और शर्तों को स्वीकार करते हैं',
          'Continue': 'जारी रखना'
        }
      };
}
