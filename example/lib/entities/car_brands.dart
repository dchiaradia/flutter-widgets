// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CarBrands {
  final String codigo;
  final String nome;
  CarBrands({
    required this.codigo,
    required this.nome,
  });

  CarBrands copyWith({
    String? codigo,
    String? nome,
  }) {
    return CarBrands(
      codigo: codigo ?? this.codigo,
      nome: nome ?? this.nome,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codigo': codigo,
      'nome': nome,
    };
  }

  factory CarBrands.fromMap(Map<String, dynamic> map) {
    return CarBrands(
      codigo: map['codigo'] as String,
      nome: map['nome'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CarBrands.fromJson(String source) =>
      CarBrands.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CarBrands(codigo: $codigo, nome: $nome)';

  @override
  bool operator ==(covariant CarBrands other) {
    if (identical(this, other)) return true;

    return other.codigo == codigo && other.nome == nome;
  }

  @override
  int get hashCode => codigo.hashCode ^ nome.hashCode;
}
