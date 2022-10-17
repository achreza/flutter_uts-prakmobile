class UserModel {
  int id;
  String Username;
  String Password;
  String Nama;
  String Foto;
  String Deskripsi;

  UserModel({
    required this.id,
    required this.Username,
    required this.Password,
    required this.Nama,
    required this.Foto,
    required this.Deskripsi,
  });
}

var listUser = [
  UserModel(
    id: 1,
    Nama: "Salma Ainur",
    Foto: "assets/marcoreus.jpg",
    Username: "salma",
    Password: "salma",
    Deskripsi: "Salma Ainur",
  ),
  UserModel(
    id: 2,
    Nama: "Dila",
    Foto: "assets/marcoreus.jpg",
    Username: "dila",
    Password: "dila",
    Deskripsi: "dilaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
  ),
];
