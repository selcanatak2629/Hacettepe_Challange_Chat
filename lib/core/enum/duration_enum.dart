import 'package:proje10/core/duration/duration_extension.dart';

enum DurationEnums {
 LOW,
 HIGH,
 NORMAL
}
extension DurationEnumsExtension  on DurationEnums{
  Duration time(){
    switch (this) {
      case DurationEnums.HIGH:
      return Duration(seconds: 10);

       case DurationEnums.NORMAL:
      return Duration(seconds: 5);

      case DurationEnums.LOW:
      return Duration(seconds: 2); 
       
      default:
      throw DurationException(this); 

    }
  }
}