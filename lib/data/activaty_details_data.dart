import 'package:resposive_app/constant/const.dart';

import '../models/activaty_details_model.dart';

class ActivatyDetailsData {
  List<ActivatyDetailsModel> data = [
    ActivatyDetailsModel('$iconpath/burn.png', '350', 'Calories burned'),
    ActivatyDetailsModel('$iconpath/steps.png', '10.63', 'Steps'),
    ActivatyDetailsModel('$iconpath/distance.png', '7KM', 'Distance'),
    ActivatyDetailsModel('$iconpath/sleep.png', '9h36m', 'Sleep'),
  ];
}
