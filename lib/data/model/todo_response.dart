
class Todo {
    int? id;
    Attributes? attributes;

    Todo({this.id, this.attributes});

    Todo.fromJson(Map<String, dynamic> json) {
        id = json["id"];
        attributes = json["attributes"] == null ? null : Attributes.fromJson(json["attributes"]);
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["id"] = id;
        if(attributes != null) {
            _data["attributes"] = attributes?.toJson();
        }
        return _data;
    }
}

class Attributes {
    String? title;
    String? description;
    String? color;
    String? createdAt;
    String? updatedAt;
    String? publishedAt;

    Attributes({this.title, this.description, this.color, this.createdAt, this.updatedAt, this.publishedAt});

    Attributes.fromJson(Map<String, dynamic> json) {
        title = json["title"];
        description = json["description"];
        color = json["color"];
        createdAt = json["createdAt"];
        updatedAt = json["updatedAt"];
        publishedAt = json["publishedAt"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["title"] = title;
        _data["description"] = description;
        _data["color"] = color;
        _data["createdAt"] = createdAt;
        _data["updatedAt"] = updatedAt;
        _data["publishedAt"] = publishedAt;
        return _data;
    }
}