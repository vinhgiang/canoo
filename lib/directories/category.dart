import 'package:flutter_svg/svg.dart';

enum Category {
  art,
  music,
  film,
  networking,
  museum,
  science,
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
  };
}
