class Movie {
  final String name;
  final String imagePath;
  final String videoPath;
  final String category;
  final int year;
  final Duration duration;

  Movie({
    required this.name,
    required this.imagePath,
    required this.videoPath,
    required this.category,
    required this.year,
    required this.duration,
  });

  static List<Movie> movies = [
    Movie(
      name: 'Anh em super Mario',
      imagePath:
          'https://s198.imacdn.com/ff/2023/04/05/c0de43b98dbd82a2_7bc24e0104041b28_1929211680681837716068.jpg',
      videoPath: 'assets/exam.mp4',
      category: 'Adventure',
      year: 2023,
      duration: const Duration(hours: 2, minutes: 22),
    ),
    Movie(
      name: 'Hiệp sĩ áo đen',
      imagePath:
          'https://s198.imacdn.com/ff/2023/04/21/0303546e3e28f559_6f3ffdc49880bf66_32327168207105333.jpg',
      videoPath: 'assets/exam.mp4',
      category: 'Adventure',
      year: 2023,
      duration: const Duration(hours: 2, minutes: 22),
    ),
    Movie(
      name: 'Dạ điểu',
      imagePath:
          'https://s198.imacdn.com/ff/2023/05/02/eb5c063c1473c892_dc8b5a63fd267383_29847168300932973.jpg',
      videoPath: 'assets/exam.mp4',
      category: 'Adventure',
      year: 2023,
      duration: const Duration(hours: 2, minutes: 22),
    ),
    Movie(
      name: 'Crater',
      imagePath:
          'https://s198.imacdn.com/ff/2023/05/12/b086454a8c317665_aa370c66b6f9cf5b_41512168388597563.jpg',
      videoPath: 'assets/exam.mp4',
      category: 'Adventure',
      year: 2023,
      duration: const Duration(hours: 2, minutes: 22),
    ),
    Movie(
      name: 'Cá mập đen',
      imagePath:
          'https://s198.imacdn.com/ff/2023/05/09/4ac697eee714acbd_ebb2506f0ec7ee4d_1736811683612604216068.jpg',
      videoPath: 'assets/exam.mp4',
      category: 'Adventure',
      year: 2023,
      duration: const Duration(hours: 2, minutes: 22),
    ),
    Movie(
      name: 'Khế ước',
      imagePath:
          'https://s198.imacdn.com/ff/2023/05/10/afea0db08392530c_a7471c2d76bc6014_1477681683702518216068.jpg',
      videoPath: 'assets/exam.mp4',
      category: 'Adventure',
      year: 2023,
      duration: const Duration(hours: 2, minutes: 22),
    ),
    Movie(
      name: 'Trường nguyệt tẫn minh',
      imagePath:
          'https://s198.imacdn.com/ff/2023/04/16/acd85bea2989e700_154f9cbc0154d430_43866168162822463.jpg',
      videoPath: 'assets/exam.mp4',
      category: 'Adventure',
      year: 2023,
      duration: const Duration(hours: 2, minutes: 22),
    ),
    Movie(
      name: 'Hộ tâm',
      imagePath:
          'https://s198.imacdn.com/ff/2023/05/11/aba7b1825fdb0182_8c7d6a963e1725b5_33688168377886873.jpg',
      videoPath: 'assets/exam.mp4',
      category: 'Drama',
      year: 2023,
      duration: const Duration(hours: 2, minutes: 22),
    ),
    Movie(
      name: 'Đàm phán',
      imagePath:
          'https://s198.imacdn.com/ff/2023/02/28/236e4d77718fef53_4496fdaa151efef1_31687167758862613.jpg',
      videoPath: 'assets/exam.mp4',
      category: 'Adventure',
      year: 2023,
      duration: const Duration(hours: 2, minutes: 22),
    ),
    Movie(
      name: 'Avatar 2: Dòng chảy của nước',
      imagePath:
          'https://s198.imacdn.com/ff/2022/12/15/12083c06125514f7_5b4af32da1f016ed_376681671102280316068.jpg',
      videoPath: 'assets/exam.mp4',
      category: 'Adventure',
      year: 2023,
      duration: const Duration(hours: 2, minutes: 22),
    ),
    Movie(
      name: 'Anh em super Mario',
      imagePath:
          'https://s198.imacdn.com/ff/2023/04/05/c0de43b98dbd82a2_7bc24e0104041b28_1929211680681837716068.jpg',
      videoPath: 'assets/exam.mp4',
      category: 'Adventure',
      year: 2023,
      duration: const Duration(hours: 2, minutes: 22),
    ),
    Movie(
      name: 'Tri Kỷ',
      imagePath:
          'https://s198.imacdn.com/ff/2023/04/19/ade7b8935191eb95_f6bfc58227e070bd_28274168189732573.jpg',
      videoPath: 'assets/exam.mp4',
      category: 'Adventure',
      year: 2023,
      duration: const Duration(hours: 2, minutes: 22),
    ),
  ];
}
