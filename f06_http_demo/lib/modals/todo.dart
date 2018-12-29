class Todo {
  int id;
  int userId;
  bool completed;
  String title;

  Todo(this.id, this.userId, this.completed, this.title);

  Todo.fromJson(Map json) { // Json nesnesi Map nesnesine benzemektedir.
    this.id = json["id"];
    this.userId = json["userId"];
    this.completed = json["completed"];
    this.title = json["title"];
  }

  Map toJson() {
    return {
      "id": this.id,
      "userId": this.userId,
      "completed": this.completed,
      "title": this.title,
    };
  }
}
