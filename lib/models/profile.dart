import 'package:flutter/material.dart';
class Profile{
  final String title;
  final String subtitle;
  final IconData iconPath;
  final Color iconColor;
  final Color backgroundColor;


  Profile({required this.title, required this.subtitle, required this.iconPath, required this.iconColor, required this.backgroundColor});
}

List<Profile> groupOne = [
  Profile(
    title: 'Account Profile',
    subtitle: 'Manage personal info and security',
    iconPath: Icons.account_box_outlined,
    iconColor: Colors.blue[900]!,
    backgroundColor: Colors.blue[400]!,
  ),
  Profile(
    title: 'Manage Payment',
    subtitle: 'Credit Card, Debit Card',
    iconPath: Icons.wallet,
    iconColor: Colors.blue[900]!,
    backgroundColor: Colors.blue[400]!,
  ),
];

List<Profile> groupTwo = [
  Profile(
    title: 'Notifications',
    subtitle: 'Push alert and email settings',
    iconPath: Icons.notifications_none,
    iconColor: Colors.blue[900]!,
    backgroundColor: Colors.blue[400]!,
  ),
  Profile(
    title: 'Privacy & Security',
    subtitle: 'Data usage and permisions',
    iconPath: Icons.lock_open_rounded,
    iconColor: Colors.blue[900]!,
    backgroundColor: Colors.blue[400]!,
  ),
];

List<Profile> groupThere = [
  Profile(
    title: 'Help & Support',
    subtitle: 'Contact us, FAQs and more',
    iconPath: Icons.help,
    iconColor: Colors.blue[900]!,
    backgroundColor: Colors.blue[400]!,
  ),
];