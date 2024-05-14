import 'package:flutter_svg/svg.dart';

enum Category {
  art,
  music,
  film,
  networking,
  museum,
  science,
  bank,
  mobile,
  subscription,
  train,
  education,
  outdoor
}

class CategoryIcon {
  static final Map<Category, SvgPicture> icons = {
    Category.art: SvgPicture.asset(
      'assets/icons/gallery.svg',
      semanticsLabel: 'Art',
    ),
    Category.music: SvgPicture.asset(
      'assets/icons/music.svg',
      semanticsLabel: 'Music',
    ),
    Category.film: SvgPicture.asset(
      'assets/icons/film.svg',
      semanticsLabel: 'Film',
    ),
    Category.networking: SvgPicture.asset(
      'assets/icons/community.svg',
      semanticsLabel: 'Networking',
    ),
    Category.museum: SvgPicture.asset(
      'assets/icons/museum.svg',
      semanticsLabel: 'Museum',
    ),
    Category.science: SvgPicture.asset(
      'assets/icons/science-centre.svg',
      semanticsLabel: 'Science',
    ),
    Category.bank: SvgPicture.asset(
      'assets/icons/bank.svg',
      semanticsLabel: 'Bank',
    ),
    Category.mobile: SvgPicture.asset(
      'assets/icons/mobile.svg',
      semanticsLabel: 'Mobile',
    ),
    Category.subscription: SvgPicture.asset(
      'assets/icons/subscription.svg',
      semanticsLabel: 'Subscription',
    ),
    Category.train: SvgPicture.asset(
      'assets/icons/train.svg',
      semanticsLabel: 'Train',
    ),
    Category.education: SvgPicture.asset(
      'assets/icons/education.svg',
      semanticsLabel: 'Education',
    ),
    Category.outdoor: SvgPicture.asset(
      'assets/icons/outdoor.svg',
      semanticsLabel: 'outdoor',
    ),
  };
}
