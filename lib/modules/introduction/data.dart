import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../shared/constants/app_colors.dart';

final List<PageViewModel> pageViewListData = [
  PageViewModel(
    title: "Send Money Easily",
    body:
        "Send money instantly to anyone in your contacts. Fast, secure, and free transactions.",
    image: _buildImage('intro1.svg'),
    decoration: _pageDecoration,
  ),
  PageViewModel(
    title: "Manage Your Finances",
    body:
        "Take charge of your finances on the go. Track transactions, check balances from your mobile device.",
    image: _buildImage('intro2.svg'),
    decoration: _pageDecoration,
  ),
  PageViewModel(
    title: "Save Money",
    body:
        "Unlock smart and secure financial control in the palm of your hand. Start saving today!",
    image: _buildImage('intro3.svg'),
    decoration: _pageDecoration,
  ),
];

Widget _buildImage(String assetName) {
  return SizedBox(
    width: 200,
    height: 200,
    child: SvgPicture.asset('assets/images/$assetName'),
  );
}

const _pageDecoration = PageDecoration(
    titleTextStyle: _titleTextStyle,
    bodyTextStyle: _bodyTextStyle,
    pageColor: Colors.white,
    imagePadding: EdgeInsets.zero);

const _titleTextStyle = TextStyle(
    fontSize: 22.0, fontWeight: FontWeight.w700, color: AppColors.primaryColor);

const _bodyTextStyle = TextStyle(fontSize: 16.0);
