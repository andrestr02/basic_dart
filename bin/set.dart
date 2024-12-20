//Belajar Variabel Set
void main(){
  Set<int> numbers = {};
//  var strings = <String>{};
//  var doubles = <double>{};
  numbers.add(1);
  numbers.add(2);
  numbers.add(3);
  numbers.add(3);//nilai ganda tidak dibaca

  print(numbers);

  Set names = <String>{};

  names.add('Abu');
  names.add('Hudzaifah');
  names.add('Jambi');
  names.add('Abu');//tidak dibaca
  names.add('abu');//dianggap beda

  print(names);
  print(names.length);
//pengisian list secara langsung tanpa add
  Set listNama = <String>{
    'Abu',
    'Hudzaifah',
    'Jambi',
    'al-Kerinci',
    'al-Ghowwash'
  };
  print(listNama);

}