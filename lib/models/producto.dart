import 'dart:convert';

Producto productoFromJson(String str) => Producto.fromJson(json.decode(str));

String productoToJson(Producto data) => json.encode(data.toJson());

class Producto {
  Producto({
    required this.id,
    required this.descripcion,
    this.cantidad,
  });

  String id;
  String descripcion;
  String? cantidad;

  factory Producto.fromJson(Map<String, dynamic> json) => Producto(
        id: json["id"],      
        cantidad: json["cantidad"] ?? "", 
          descripcion: json["descripcion"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
          "cantidad": cantidad,
        "descripcion": descripcion,
      
      };
}
