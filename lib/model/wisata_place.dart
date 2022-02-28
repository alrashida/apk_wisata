class wisataPlace {
  late String name;
  late String lokasi;
  late String desc;
  late String opendays;
  late String opentime;
  late String ticketprice;
  late String ImageAssets;
  late List<String> imageUrls;

  wisataPlace({
    required this.name,
    required this.lokasi,
    required this.desc,
    required this.opendays,
    required this.opentime,
    required this.ticketprice,
    required this.ImageAssets,
    required this.imageUrls,
  });
}

var wisataplaceList  = [
  wisataPlace(
      name: 'pantai',
      desc: 'indah',
      lokasi: 'bali',
      opendays: 'everday',
      opentime: 'pagi sampai malem',
      ticketprice: 'murah',
      ImageAssets: 'images/petronas.jpeg',
      imageUrls: [
        'https://photos.google.com/photo/AF1QipOtir7-zqQf6g-qHYwh762S00Qiebdr6gQoNo4_',
        'https://cdn.idntimes.com/content-images/community/2020/02/petronis-towers-igs-magazine-opinion-10-41b8c2db5e461f1903d2824bf6109e8f_600x400.jpg',
        'https://cdn.idntimes.com/content-images/community/2020/02/petronis-towers-igs-magazine-opinion-10-41b8c2db5e461f1903d2824bf6109e8f_600x400.jpg',
      ]
  ),
  wisataPlace(
      name: 'kota',
      lokasi: 'gk tau',
      desc: 'busehh',
      opendays: 'minggu',
      opentime: 'tengah malem',
      ticketprice: 'muahal',
      ImageAssets: 'images/petronas.jpeg',
      imageUrls: [
        'https://cdn.idntimes.com/content-images/community/2020/02/petronis-towers-igs-magazine-opinion-10-41b8c2db5e461f1903d2824bf6109e8f_600x400.jpg',
        'https://cdn.idntimes.com/content-images/community/2020/02/petronis-towers-igs-magazine-opinion-10-41b8c2db5e461f1903d2824bf6109e8f_600x400.jpg',
        'https://cdn.idntimes.com/content-images/community/2020/02/petronis-towers-igs-magazine-opinion-10-41b8c2db5e461f1903d2824bf6109e8f_600x400.jpg',
      ]
  ),

];
