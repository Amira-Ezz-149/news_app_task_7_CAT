class News {
  News({
    Map data
  }){
    this.author = data['author'];
    this.title = data['title'];
    this.url = data['url'];
    this.description = data['description'];
    this.urlToImage = data['urlToImage'];
  }

  String author;
  String title;
  String description;
  String url;
  String urlToImage;



  Map<String, dynamic> toJson() => {
    "title": title,
    "urlToImage": urlToImage,
    "description": description,
  };


}
