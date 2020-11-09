class Post{
  String iid,title,content,dateWritten,featuredImage;
  int votesUp,votesDown;
  List<int> votersUp,votersDown;
  int userId,categoryTd;

  Post({
    this.iid,
    this.title,
    this.content,
    this.dateWritten,
    this.featuredImage,
    this.votesUp,
    this.votesDown,
    this.votersUp,
    this.votersDown,
    this.userId,
    this.categoryTd});
}
