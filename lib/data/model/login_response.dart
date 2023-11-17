class LoginResponse {
    String? jwt;
    User? user;

    LoginResponse({this.jwt, this.user});

    LoginResponse.fromJson(Map<String, dynamic> json) {
        jwt = json["jwt"];
        user = json["user"] == null ? null : User.fromJson(json["user"]);
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["jwt"] = jwt;
        if(user != null) {
            _data["user"] = user?.toJson();
        }
        return _data;
    }
}

class User {
    int? id;
    String? username;
    String? email;
    String? provider;
    bool? confirmed;
    bool? blocked;
    String? createdAt;
    String? updatedAt;

    User({this.id, this.username, this.email, this.provider, this.confirmed, this.blocked, this.createdAt, this.updatedAt});

    User.fromJson(Map<String, dynamic> json) {
        id = json["id"];
        username = json["username"];
        email = json["email"];
        provider = json["provider"];
        confirmed = json["confirmed"];
        blocked = json["blocked"];
        createdAt = json["createdAt"];
        updatedAt = json["updatedAt"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["id"] = id;
        _data["username"] = username;
        _data["email"] = email;
        _data["provider"] = provider;
        _data["confirmed"] = confirmed;
        _data["blocked"] = blocked;
        _data["createdAt"] = createdAt;
        _data["updatedAt"] = updatedAt;
        return _data;
    }
}