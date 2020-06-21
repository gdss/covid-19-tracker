import 'package:intl/intl.dart';

class FormatterUtil {
  static getNumber(number) {
    return NumberFormat.decimalPattern('pt_BR').format(number);
  }

  static getDateTime(dateTime) {
    return DateFormat('dd/MM/yyyy HH:mm')
        .format(DateTime.fromMillisecondsSinceEpoch(dateTime));
  }
}
