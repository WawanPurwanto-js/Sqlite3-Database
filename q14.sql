
wawan@wawan-ThinkPad-X220:~$ sqlite3 university.db
SQLite version 3.22.0 2018-01-22 18:45:57
Enter ".help" for usage hints.
sqlite> create table Dosen(kode_dosen varchar(10),nama_dosen varchar(30),PRIMARY KEY(kode_dosen));
sqlite> create table Jurusan(kode_jurusan varchar(10),nama_jurusan varchar(30),PRIMARY KEY(kode_jurusan));
sqlite> mata_kuliah (nama_mk varchar(30),kode_mk varchar(10),sks int, PRIMARY KEY(kode_mk));
Error: near "mata_kuliah": syntax error
sqlite> create table mata_kuliah (nama_mk varchar(30),kode_mk varchar(10),sks int, PRIMARY KEY(kode_mk));
sqlite> create table mahasiswa(nim varchar(10),nama_mahasiswa varchar(30),alamat varchar(45),umur int,kode_jurusan varchar(10),PRIMARY KEY(nim),FOREIGN KEY (kode_jurusan) REFERENCES Jurusan(kode_jurusan));
sqlite> create table kontrak(nim varchar(10),kode_mk varchar(20),kode_dosen varchar(10),nilai varchar(1),PRIMARY KEY(nim,kode_mk,kode_dosen),FOREIGN KEY(nim) REFERENCES mahasiswa(nim),FOREIGN KEY (kode_mk) REFERENCES mata_kuliah(kode_mk),FOREIGN KEY(kode_dosen) REFERENCES dosen(kode_dosen));
sqlite> insert into mahasiswa values ('n1','nana','street sudirman','18','kj1');
sqlite> insert into mahasiswa values ('n2','ani','street dago no 09 bandung ','20','kj2');
sqlite> insert into mahasiswa values ('n3','usi','street cibiru no 10 bandung ','23','kj3');
sqlite> insert into mahasiswa values ('n4','lusi','street cipadung no 10 bandung ','25','kj4');
sqlite> insert into mahasiswa values ('n5','ahyar','street cilengkrang no 101 bandung ','22','kj5');
sqlite> insert into mahasiswa values ('n6','dodi','street ciroyom no 90 bandung ','24','kj5');
sqlite> insert into mahasiswa values ('n7','Gatot','street moh toha  no 3a  bandung ','24','kj4');
sqlite> insert into mahasiswa values ('n8','Nurdin','street cimahi no 3b  bandung ','24','kj3');
sqlite> select from* Dosen;
Error: near "from": syntax error
sqlite> select from * Dosen;
Error: near "from": syntax error
sqlite> select from * Dosen
   ...> select * from  Dosen
   ...> select * from  Dosen;
Error: near "from": syntax error
sqlite> select * from  Dosen;
sqlite> select * from Dosen;
sqlite> insert into Dosen values ('kd1','aa zezen .MT');
sqlite> select * from Dosen;
kd1|aa zezen .MT
sqlite> insert into Dosen values ('kd2','Eko .ST');
sqlite> insert into Dosen values ('kd3','Ade .ST');
sqlite> insert into Dosen values ('kd4','Eka .ST');
sqlite> insert into Dosen values ('kd5','Udin .ST');
sqlite> insert into Jurusan ('kj1','Teknik Informatika');
Error: near ";": syntax error
sqlite> insert into Jurusan values ('kj1','Teknik Informatika');
sqlite> insert into Jurusan values ('kj2','Manajemen Informatika');
sqlite> insert into Jurusan values ('kj3','sistem  Informaasi');
sqlite> insert into Jurusan values ('kj4','Manajemen Bisnis ');
sqlite> insert into Jurusan values ('kj5','Manajemen komputer ');
sqlite> insert into mata_kuliah values ('oop','mk1','4');
sqlite> insert into mata_kuliah values ('algoritma pemograman','mk2','5');
sqlite> insert into mata_kuliah values ('web','mk3','2');
sqlite> insert into mata_kuliah values ('sistem komputer','mk4','2');
sqlite> insert into mata_kuliah values ('data mining','mk5','5');
sqlite> insert into mata_kuliah values ('matematika','mk6','2');
sqlite> insert into mata_kuliah values ('kalkulus','mk7','2');
sqlite> insert into mata_kuliah values ('bisnis','mk8','3');
sqlite> insert into kontrak  values ('n1','mk1','kd1','A');
sqlite> insert into kontrak  values ('n1','mk2','kd2','B');
sqlite> insert into kontrak  values ('n1','mk3','kd3','E');
sqlite> insert into kontrak  values ('n1','mk4','kd4','C');
sqlite> insert into kontrak  values ('n1','mk5','kd5','D');
sqlite> insert into kontrak  values ('n2','mk1','kd1','D');
sqlite> insert into kontrak  values ('n2','mk2','kd2','D');
sqlite> insert into kontrak  values ('n2','mk3','kd3','A');
sqlite> insert into kontrak  values ('n2','mk4','kd4','B');
sqlite> insert into kontrak  values ('n2','mk5','kd5','B');
sqlite> insert into kontrak  values ('n3','mk1','kd1','B');
sqlite> insert into kontrak  values ('n3','mk2','kd2','C');
sqlite> insert into kontrak  values ('n3','mk3','kd3','E');
sqlite> insert into kontrak  values ('n3','mk4','kd4','D');
sqlite> insert into kontrak  values ('n3','mk5','kd5','A');
sqlite> insert into kontrak  values ('n4','mk1','kd1','A');
sqlite> insert into kontrak  values ('n4','mk2','kd2','D');
sqlite> insert into kontrak  values ('n4','mk3','kd3','B');
sqlite> insert into kontrak  values ('n4','mk5','kd4','E');
sqlite> insert into kontrak  values ('n4','mk7','kd5','E');
sqlite> insert into kontrak  values ('n4','mk8','kd5','A');
sqlite> insert into kontrak  values ('n5','mk8','kd5','B');
sqlite> insert into kontrak  values ('n5','mk5','kd1','B');
sqlite> insert into kontrak  values ('n5','mk8','kd3','B');
sqlite> insert into kontrak  values ('n5','mk3','kd4','C');
sqlite> insert into kontrak  values ('n5','mk4','kd5','E');
sqlite> select * from dosen;
kd1|aa zezen .MT
kd2|Eko .ST
kd3|Ade .ST
kd4|Eka .ST
kd5|Udin .ST
sqlite> select * from jurusan;
kj1|Teknik Informatika
kj2|Manajemen Informatika
kj3|sistem  Informaasi
kj4|Manajemen Bisnis 
kj5|Manajemen komputer 
sqlite> select * from mata_kuliah;
oop|mk1|4
algoritma pemograman|mk2|5
web|mk3|2
sistem komputer|mk4|2
data mining|mk5|5
matematika|mk6|2
kalkulus|mk7|2
bisnis|mk8|3
sqlite> select * from mahasiswa;
n1|nana|street sudirman|18|kj1
n2|ani|street dago no 09 bandung |20|kj2
n3|usi|street cibiru no 10 bandung |23|kj3
n4|lusi|street cipadung no 10 bandung |25|kj4
n5|ahyar|street cilengkrang no 101 bandung |22|kj5
n6|dodi|street ciroyom no 90 bandung |24|kj5
n7|Gatot|street moh toha  no 3a  bandung |24|kj4
n8|Nurdin|street cimahi no 3b  bandung |24|kj3
sqlite> select * from kontrak;
n1|mk1|kd1|A
n1|mk2|kd2|B
n1|mk3|kd3|E
n1|mk4|kd4|C
n1|mk5|kd5|D
n2|mk1|kd1|D
n2|mk2|kd2|D
n2|mk3|kd3|A
n2|mk4|kd4|B
n2|mk5|kd5|B
n3|mk1|kd1|B
n3|mk2|kd2|C
n3|mk3|kd3|E
n3|mk4|kd4|D
n3|mk5|kd5|A
n4|mk1|kd1|A
n4|mk2|kd2|D
n4|mk3|kd3|B
n4|mk5|kd4|E
n4|mk7|kd5|E
n4|mk8|kd5|A
n5|mk8|kd5|B
n5|mk5|kd1|B
n5|mk8|kd3|B
n5|mk3|kd4|C
n5|mk4|kd5|E
sqlite> 
