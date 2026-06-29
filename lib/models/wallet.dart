import 'package:flutter/material.dart';

class Wallet {
  final String title;
  final String date;
  final String amount;
  final bool isTopup;
  final bool useIconData;
  final String? iconText;
  final IconData? iconData;
  final Color iconColor;
  final Color contentColor;

  Wallet({
    required this.title,
    required this.date,
    required this.amount,
    required this.isTopup,
    required this.useIconData,
    this.iconText,
    this.iconData,
    required this.iconColor,
    required this.contentColor,
  });
}

List<Wallet> wallets = [
  Wallet(
    title: 'Central Plaza Parking',
    date: 'Today, 11:45 AM',
    amount: '-\$12.50',
    isTopup: false,
    useIconData: false,
    iconText: 'P',
    iconColor: const Color(0xFFFFF1F2),
    contentColor: const Color(0xFFBE123C),
  ),
  Wallet(
    title: 'Wallet Topup',
    date: 'Yesterday, 09:20 PM',
    amount: '+\$50.00',
    isTopup: true,
    useIconData: true,
    iconData: Icons.account_balance_wallet_outlined,
    iconColor: const Color(0xFFEEF2FF),
    contentColor: const Color(0xFF4338CA),
  ),
  Wallet(
    title: 'Masa Mart Malls',
    date: '22 Oct, 03:15 PM',
    amount: '-\$34.20',
    isTopup: false,
    useIconData: true,
    iconData: Icons.shopping_bag_outlined,
    iconColor: const Color(0xFFFFF1F2),
    contentColor: const Color(0xFFBE123C),
  ),
];
