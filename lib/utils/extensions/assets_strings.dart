extension AssetStrings on String {
  String get png => 'assets/images/$this.png';
  String get svg => 'assets/icons/$this.svg';
}

extension StringExtension on String {
  String get capitalize {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

extension DotteddStrings on String {
  String get dotted => "${String.fromCharCode(0x2022)} $this";
  String get withNaira => "₦$this";
}
// String.fromCharCode(0x20A6)