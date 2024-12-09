//convert datetime object to a string yyyymmdd

String convertDateTimeToString(DateTime datetime) {
  String year = datetime.year.toString();

  String month = datetime.month.toString();
  if (month.length == 1) {
    month = '0' + month;
  }

  String day = datetime.day.toString();
  if (day.length == 1) {
    day = '0' + day;
  }

  String yyyymmdd = year + month + day;

  return yyyymmdd;
}
