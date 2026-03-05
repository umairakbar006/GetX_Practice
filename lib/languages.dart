import 'package:get/route_manager.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {'message': 'What is your name?', 'name': 'Umair Akbar'},
    'ur_PK': {'message': 'آپ کا نام کیا ہے', 'name': 'عمیر اکبر'},
  };
}
