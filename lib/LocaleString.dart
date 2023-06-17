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
          'Please connect to Internet': 'बहुत अच्छी हेडलाइन'
        }
      };
}
