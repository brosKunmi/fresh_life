import 'package:flutter/material.dart';

class MenuItems {
  const MenuItems({required this.icon, required this.name});

  final IconData icon;
  final String name;
}

class ServiceItems {
  const ServiceItems({
    required this.icon,
    required this.text,
    required this.address,
    required this.image,
  });

  final IconData icon;
  final String address;
  final String text;
  final String image;
}

class ServiceTypeItems {
  const ServiceTypeItems({
    required this.icon,
    required this.text,
    required this.address,
  });

  final IconData icon;
  final String address;
  final String text;
}
