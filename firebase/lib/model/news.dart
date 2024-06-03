 

class NewsModel {
  String News;
  String? id;

  NewsModel({
    required this.News,
      this.id,
  });

  Map<String, dynamic> tojsone(idd) => {
        'news': News,
        'Id': idd,
      };
  factory NewsModel.fromjsone(Map<String, dynamic> jsone) {
    return NewsModel(
      News: jsone['news'],
      id: jsone['id'],
    );
  }
}
