import 'dart:convert';

class Usuario {
  int id;
  String nome;
  String email;
  Usuario({
    this.id = 0,
    this.nome = '',
    this.email = '',
  });

  Usuario copyWith({
    int id,
    String nome,
    String email,
  }) {
    return Usuario(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'email': email,
    };
  }

  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(
      id: map['id'] ?? 0,
      nome: map['nome'] ?? '',
      email: map['email'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Usuario.fromJson(String source) => Usuario.fromMap(json.decode(source));

  @override
  String toString() => 'Usuario(id: $id, nome: $nome, email: $email)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Usuario &&
      other.id == id &&
      other.nome == nome &&
      other.email == email;
  }

  @override
  int get hashCode => id.hashCode ^ nome.hashCode ^ email.hashCode;
}
