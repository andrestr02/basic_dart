/* null safety untuk mencegah NullPointerException
*/
void main(){
  //conntoh null safety
  String? nama = null; // deklarasi variabel dengan tanda ?
  if (nama != null) {
    print(nama); // jika nama tidak null maka akan menampilkan nilai nama
    } else {
      print("nama tidak ada"); // jika nama null maka akan menampilkan pesan "nama tidak ada"
      }
      
}

