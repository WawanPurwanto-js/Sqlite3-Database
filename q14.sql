


sqlite> CREATE DATABASE University;
Error: near "DATABASE": syntax error
sqlite> CREATE DATABASE University.db
   ...> CREATE TABLE Dosen (Kode_Dosen Varchar(10),Nama_Dosen Varchar(30),PRIMARY KEY (Kode_Dosen));
Error: near "DATABASE": syntax error
sqlite> .tables
sqlite> .q
wawan@wawan-ThinkPad-X220:~$ sqlite
bash: sqlite: command not found
wawan@wawan-ThinkPad-X220:~$ sqlite3
SQLite version 3.22.0 2018-01-22 18:45:57
Enter ".help" for usage hints.
Connected to a transient in-memory database.
Use ".open FILENAME" to reopen on a persistent database.
sqlite> sqlite3 university.db
   ...> .databases
   ...> .databases
   ...> sqlite3 university.db
   ...> CREATE TABLE Dosen (Kode_Dosen Varchar(10),Nama_Dosen Varchar(30),PRIMARY KEY (Kode_Dosen));
Error: near "sqlite3": syntax error
sqlite> .q
wawan@wawan-ThinkPad-X220:~$ sqlite3 university.db
SQLite version 3.22.0 2018-01-22 18:45:57
Enter ".help" for usage hints.
sqlite> create table Dosen(kode_dosen varchar(10),nama_dosen varchar(30),PRIMARY KEY(kode_dosen));
sqlite> create table Jurusan(kode_jurusan varchar(10),nama_jurusan varchar(30),PRIMARY KEY(kode_jurusan));
sqlite> create table mata_kuliah(nama_mk varchar(30),kode_mk varchar(10),sks int PRIMARY KEY(kode_mk));
Error: near "(": syntax error
sqlite> create table mata_kuliah(nama_mk varchar(30),kode_mk varchar(10),sks int PRIMARY KEY(kode_mk))
   ...> create table mata_kuliah(nama_mk varchar(30),kode_mk varchar(10),sks int PRIMARY KEY(kode_mk))
   ...> create table mata_kuliah(nama_mk varchar(30),kode_mk varchar(10),sks int PRIMARY KEY(kode_mk));
Error: near "(": syntax error
sqlite> create table mata_kuliah(nama_mk varchar(30),kode_mk varchar(10),sks int PRIMARY KEY(nama_mk));
Error: near "(": syntax error
sqlite> create table mata_kuliah (nama_mk varchar(30),kode_mk varchar(10),sks int, PRIMARY KEY(kode_mk))
   ...> create table mata_kuliah (nama_mk varchar(30),kode_mk varchar(10),sks int, PRIMARY KEY(kode_mk));
Error: near "create": syntax error
sqlite> create table mata_kuliah (nama_mk varchar(30),kode_mk varchar(10),sks int, PRIMARY KEY(kode_mk));
sqlite> create table mahasiswa (nim varchar(10),nama_mahasiswa(30),alamat varchar(45),umur int,kode_jurusan varchar(10),PRIMARY KEY(nim),FOREIGN KEY (kode_jurusan) REFERENCES Jurusan(kode_jurusan));
Error: near "(": syntax error
sqlite> create table mahasiswa (nim varchar(10),nama_mahasiswa(30),alamat varchar(45),umur int,kode_jurusan varchar(10),PRIMARY KEY(nim),FOREIGN KEY (kode_jurusan) REFERENCES Jurusan(kode_jurusan))
   ...> create table mahasiswa (nim varchar(10),nama_mahasiswa(30),alamat varchar(45),umur int,kode_jurusan varchar(10),PRIMARY KEY(nim),FOREIGN KEY (kode_jurusan) REFERENCES Jurusan(kode_jurusan));
Error: near "(": syntax error
sqlite> create table mahasiswa(nim varchar(10),nama_mahasiswa varchar(30),alamat varchar(45),umur int,kode_jurusan varchar(10),PRIMARY KEY(nim),FOREIGN KEY (kode_jurusan) REFERENCES Jurusan(kode_jurusan));
sqlite> create table kontrak(nim varchar(10),kode_mk varchar(20),kode_dosen varchar(10),nilai varchar(1),PRIMARY KEY(nim,kode_mk,kode_dosen),FOREIGN KEY(nim) REFERENCES mahasiswa(nim),FOREIGN KEY (kode_mk)REFERENCES mata_kuliah(kode_mk),FOREIGN KEY(kode_dosen) REFERENCES dosen(kode_dosen);
Error: near ";": syntax error
sqlite> create table kontrak(nim varchar(10),kode_mk varchar(20),kode_dosen varchar(10),nilai varchar(1),PRIMARY KEY(nim,kode_mk,kode_dosen),FOREIGN KEY(nim) REFERENCES mahasiswa(nim),FOREIGN KEY (kode_mk)REFERENCES mata_kuliah(kode_mk),FOREIGN KEY(kode_dosen) REFERENCES dosen(kode_dosen)
   ...> create table kontrak(nim varchar(10),kode_mk varchar(20),kode_dosen varchar(10),nilai varchar(1),PRIMARY KEY(nim,kode_mk,kode_dosen),FOREIGN KEY(nim) REFERENCES mahasiswa(nim),FOREIGN KEY (kode_mk) REFERENCES mata_kuliah(kode_mk),FOREIGN KEY(kode_dosen) REFERENCES dosen(kode_dosen);
Error: near "create": syntax error
sqlite> create table kontrak(nim varchar(10),kode_mk varchar(20),kode_dosen varchar(10),nilai varchar(1),PRIMARY KEY(nim,kode_mk,kode_dosen),FOREIGN KEY(nim) REFERENCES mahasiswa(nim),FOREIGN KEY (kode_mk) REFERENCES mata_kuliah(kode_mk),FOREIGN KEY(kode_dosen) REFERENCES dosen(kode_dosen);
Error: near ";": syntax error
sqlite> create table kontrak(nim varchar(10),kode_mk varchar(20),kode_dosen varchar(10),nilai varchar(1),PRIMARY KEY(nim,kode_mk,kode_dosen),FOREIGN KEY(nim) REFERENCES mahasiswa(nim),FOREIGN KEY (kode_mk) REFERENCES mata_kuliah(kode_mk),FOREIGN KEY(kode_dosen) REFERENCES dosen(kode_dosen));
 
sqlite> insert into mahasiswa values ('n1','nana','street sudirman','18','kj1');
sqlite> insert into mahasiswa values ('n2','ani','street dago no 09 bandung ','20','kj2');
sqlite> insert into mahasiswa values ('n3','usi','street cibiru no 10 bandung ','23','kj3');
sqlite> insert into mahasiswa values ('n4','lusi','street cipadung no 10 bandung ','25','kj4');
sqlite> insert into mahasiswa values ('n5','ahyar','street cilengkrang no 101 bandung ','22','kj5');
sqlite> insert into mahasiswa values ('n6','dodi','street ciroyom no 90 bandung ','24','kj5');
sqlite> insert into mahasiswa values ('n7','Gatot','street moh toha  no 3a  bandung ','24','kj4');
sqlite> insert into mahasiswa values ('n8','Nurdin','street cimahi no 3b  bandung ','24','kj3');
sqlite> select * from Jurusan;
kj1|Teknik Informatika
kj2|Manajemen Informatika
kj3|Manajemen Bisnis
kj4|Sistem Komputer
kj5|Teknik Komputer
sqlite> select * from Mahasiswa;
n1|jokowi|street sudirman|18|kj1
n2|Prabowo|street dago no 09 bandung |20|kj2
n3|Luhut Sitompul|street cibiru no 10 bandung |23|kj3
n4|Anies Bawesdan|street cipadung no 10 bandung |25|kj4
n5|Ridwan Kamil|street cilengkrang no 101 bandung |22|kj5
n6|dodi|street ciroyom no 90 bandung |24|kj5
n7|Gatot|street moh toha  no 3a  bandung |24|kj4
n8|Nurdin|street cimahi no 3b  bandung |24|kj3
sqlite> 
sqlite> insert into kontrak values ('n1','mk1','kd1','A');
sqlite> insert into kontrak values ('n1','mk2','kd2','A');
sqlite> insert into kontrak values ('n1','mk3','kd3','B');
sqlite> insert into kontrak values ('n1','mk4','kd4','B');
sqlite> insert into kontrak values ('n1','mk5','kd5','B');
sqlite> insert into kontrak values ('n2','mk1','kd1','B');
sqlite> insert into kontrak values ('n2','mk2','kd2','B');
^[[Asqliinsert into kontrak values ('n2','mk3','kd3','B');
sqlite> insert into kontrak values ('n2','mk3','kd3','B');
Error: UNIQUE constraint failed: kontrak.nim, kontrak.kode_mk, kontrak.kode_dosen
sqlite> insert into kontrak values ('n2','mk4','kd4','B');
sqlite> insert into kontrak values ('n2','mk5','kd5','B');
sqlite> insert into kontrak values ('n3','mk1','kd1','A');
sqlite> insert into kontrak values ('n3','mk2','kd2','A');
sqlite> insert into kontrak values ('n3','mk3','kd3','B');
sqlite> insert into kontrak values ('n3','mk4','kd4','B');
sqlite> insert into kontrak values ('n3','mk5','kd5','B');
sqlite> insert into kontrak values ('n4','mk1','kd1','A');
sqlite> insert into kontrak values ('n4','mk2','kd2','B');
sqlite> insert into kontrak values ('n4','mk3','kd3','A');
sqlite> insert into kontrak values ('n4','mk4','kd4','B');
sqlite> insert into kontrak values ('n4','mk5','kd5','B');
sqlite> insert into kontrak values ('n5','mk1','kd1','B');
sqlite> insert into kontrak values ('n5','mk2','kd2','B');
sqlite> insert into kontrak values ('n5','mk3','kd3','B');
sqlite> insert into kontrak values ('n5','mk4','kd4','B');
sqlite> insert into kontrak values ('n5','mk5','kd5','B');
sqlite> SELECT * FROM kontrak;
n1|mk1|kd1|A
n1|mk2|kd2|A
n1|mk3|kd3|B
n1|mk4|kd4|B
n1|mk5|kd5|B
n2|mk1|kd1|B
n2|mk2|kd2|B
n2|mk3|kd3|B
n2|mk4|kd4|B
n2|mk5|kd5|B
n3|mk1|kd1|A
n3|mk2|kd2|A
n3|mk3|kd3|B
n3|mk4|kd4|B
n3|mk5|kd5|B
n4|mk1|kd1|A
n4|mk2|kd2|B
n4|mk3|kd3|A
n4|mk4|kd4|B
n4|mk5|kd5|B
n5|mk1|kd1|B
n5|mk2|kd2|B
n5|mk3|kd3|B
n5|mk4|kd4|B
n5|mk5|kd5|B
