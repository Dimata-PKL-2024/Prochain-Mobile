import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class DateUtil {
  static String? date;

  static indonesian({String? date}) {
    if (date == 'null' || date == null) return '';
    initializeDateFormatting();

    DateTime dateTime = DateTime.parse(date);
    DateFormat dateFormat = DateFormat("dd LLLL y", 'id_ID');
    var dateFormated = dateFormat.format(dateTime);
    return dateFormated;
  }

  static indonesianTime({String? date}) {
    if (date == 'null' || date == null) return '';
    initializeDateFormatting();

    DateTime dateTime = DateTime.parse(date);
    DateFormat dateFormat = DateFormat("HH:mm", 'id_ID');
    var dateFormated = dateFormat.format(dateTime);
    return dateFormated;
  }

  static indonesianFormat({String? date}) {
    if (date == 'null' || date == null) return '';
    initializeDateFormatting();

    DateTime dateTime = DateTime.parse(date);
    DateFormat dateFormat = DateFormat("yyyy-MM-dd", 'id_ID');
    var dateFormated = dateFormat.format(dateTime);
    return dateFormated;
  }

  static indonesianDateTime({String? date}) {
    if (date == 'null' || date == null) return '';
    initializeDateFormatting();

    DateTime dateTime = DateTime.parse(date);
    DateFormat dateFormat = DateFormat("dd LLLL y, HH:mm", 'id_ID');
    var dateFormated = dateFormat.format(dateTime);
    return dateFormated;
  }

  static indonesianShort({date}) {
    if (date == null) return '';
    initializeDateFormatting();

    DateTime dateTime = DateTime.parse(date);
    DateFormat dateFormat = DateFormat("dd LLL yy", 'id_ID');
    var dateFormated = dateFormat.format(dateTime);
    return dateFormated;
  }

  static indonesianDays({date}) {
    if (date == null) return '';
    initializeDateFormatting();

    DateTime dateTime = DateTime.parse(date);
    DateFormat dateFormat = DateFormat("EEEE", 'id_ID');
    var dateFormated = dateFormat.format(dateTime);
    return dateFormated;
  }

  static indonesianMonthYears({date}) {
    if (date == null) return '';
    initializeDateFormatting();

    DateTime dateTime = DateTime.parse(date);
    DateFormat dateFormat = DateFormat("LLL yyyy", 'id_ID');
    var dateFormated = dateFormat.format(dateTime);
    return dateFormated;
  }

  static indonesianDateDays({date}) {
    if (date == null) return '';
    initializeDateFormatting();

    DateTime dateTime = DateTime.parse(date);
    DateFormat dateFormat = DateFormat("dd", 'id_ID');
    var dateFormated = dateFormat.format(dateTime);
    return dateFormated;
  }

  static indonesianAlterDays({date}) {
    if (date == null) return '';
    initializeDateFormatting();

    DateTime dateTime = DateTime.parse(date);
    DateFormat dateFormat = DateFormat("dd/MM/yyyy", 'id_ID');
    var dateFormated = dateFormat.format(dateTime);
    return dateFormated;
  }

  static indonesianValueDateTime({String? date}) {
    if (date == 'null' || date == null) return '';
    initializeDateFormatting();

    DateTime dateTime = DateTime.parse(date);
    DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm:ss", 'id_ID');
    var dateFormated = dateFormat.format(dateTime);
    return dateFormated;
  }

  static indonesianAlterTimestamp({String? date}) {
    if (date == 'null' || date == null) return '';
    initializeDateFormatting();

    DateTime dateTime = DateTime.parse(date);
    DateFormat dateFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", 'id_ID');
    var dateFormated = dateFormat.format(dateTime);
    return dateFormated;
  }
}
