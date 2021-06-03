class Location {
   String title, image, desc, theme, location;
   double rate;
   int id;
  Location({int id, String name, String theme, String description, String imageUrl, String locationUrl}) {
    this.id = id;
    this.title = name;
    this.image = imageUrl;
    this.desc = description;
    this.theme = theme;
    this.location = locationUrl;
  }
}