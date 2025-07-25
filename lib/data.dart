class GalleryItem {
  final String imagePath;
  final String title;
  final String description;
  final String? date;

  GalleryItem({
    required this.imagePath,
    required this.title,
    required this.description,
    this.date,
  });
}

final List<GalleryItem> galleryItems = [
  GalleryItem(
    imagePath: 'assets/images/Bild01.jpg',
    title: 'Lübeck bei Nacht',
    description:
        'Die Silhouette von Lübeck bei Nacht aus der Umgebung aufgenommen.',
    date: '23.08.2018',
  ),
  GalleryItem(
    imagePath: 'assets/images/Bild02.jpg',
    title: 'Jesus am Kreuz',
    description:
        'Aufnahme eines Details des Altars in der Kirch zu Curau in Ostholstein.',
    date: '30.10.2017',
  ),
  GalleryItem(
    imagePath: 'assets/images/Bild03.jpg',
    title: 'Detail des Doms zu Lübeck',
    description:
        'Detailaufnahme des Doms zu Lübeck, das die beeindruckende Architektur und die kunstvollen Verzierungen zeigt.',
    date: '10.05.2015',
  ),
  GalleryItem(
    imagePath: 'assets/images/Bild04.jpg',
    title: 'Silouette von Lübeck im Frühjahr',
    description:
        'Silouette von Lübeck im Frühjahr, aufgenommen bei strahlendem Sonnenschein, der die Stadt in Licht taucht.',
    date: '23.04.2018',
  ),
  GalleryItem(
    imagePath: 'assets/images/Bild05.jpg',
    title: 'Schwar/weiß Landschaft',
    description:
        'Felder in Ostholstein, aufgenommen in Schwarz/Weiß, um die Textur und die Formen der Landschaft hervorzuheben.',
    date: '20.006.2017',
  ),
  GalleryItem(
    imagePath: 'assets/images/Bild06.jpg',
    title: 'Trave Mündung',
    description:
        'Die Mündung der Trave in Lübeck-Travemünde, die den Übergang von der Stadt zum Wasser zeigt.',
    date: '20.09.2016',
  ),
];

// Daten für den "Über mich"-Bildschirm
final String aboutMeText = """
Mein Name ist Marco Eggert, ein Fotograf im Alter von 51 Jahren, der die Welt durch die Linse entdeckt. Mit einem Hintergrund in der visuellen Kunst und jahrelanger Erfahrung in der Fotografie habe ich einen Blick für die Schönheit im Alltäglichen entwickelt. Meine Spezialität liegt in der Street- und Landschaftsfotografie, wo ich das Spiel von Licht und Schatten einfange, um emotionale und aussagekräftige Bilder zu schaffen.

Ich glaube daran, dass jede Landschaft auch eine Geschichte zu erzählen hat, und ich bemühe mich, diese Geschichten in meinen Fotografien festzuhalten. Ob es sich um die Intensität der Wolken oder die ruhige Majestät der Architektur handelt, mein Ziel ist es, Bilder zu schaffen, die nicht nur visuell ansprechend sind, sondern auch Emotionen wecken und zum Nachdenken anregen.
""";
