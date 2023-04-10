class Student {
  int? page;
  int? perpage;
  int? total;
  int? totalpages;
  List<Data>? data;
  Support? support;

  Student({
    this.page,
    this.perpage,
    this.total,
    this.totalpages,
    this.data,
    this.support,
  });

  factory Student.fromjson(Map<String, dynamic> json) {
    List<Data> l1 = [];
    //print(json);
    for (int i = 0; i < (json["data"]).length; i++) {
      l1.add(Data.fromjson(json["data"][i]));
      print(json);
    }

    return Student(
      page: json["page"],
      perpage: json["per_page"],
      total: json["total"],
      totalpages: json["total_pages"],
      data: l1,
      support: Support.fromjson(json["support"]),
    );
  }
}

class Data {
  int? id;
  String? email;
  String? firstname;
  String? lastname;
  String? avatar;

  Data({
    this.id,
    this.email,
    this.firstname,
    this.lastname,
    this.avatar,
  });

  factory Data.fromjson(Map<String, dynamic> json) {
    return Data(
      id: json["id"],
      email: json["email"],
      firstname: json["first_name"],
      lastname: json["last_name"],
      avatar: json["avatar"],
    );
  }
}

class Support {
  String? url;
  String? text;

  Support({
    this.url,
    this.text,
  });

  factory Support.fromjson(Map<String, dynamic> json) {
    return Support(
      url: json["url"],
      text: json["text"],
    );
  }
}
