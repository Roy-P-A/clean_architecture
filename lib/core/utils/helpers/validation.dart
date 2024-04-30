
bool isValidPhone(String phone) {
  return RegExp(r"^[0-9]{0,20}$").hasMatch(phone);
}