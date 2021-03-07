Create Table Pengirim (
    id_pengirim varchar2(4) primary key,
    nama_depan_pengirim varchar2(50),
    nama_belakang_pengirim varchar2(50),
    alamat_pengirim varchar2(50)
);

Create Table NomorHPPengirim (
    id_pengirim varchar2(4),
    no_hp_pengirim varchar2(20),
    constraint FK_nomorhppengirim foreign key (id_pengirim) references pengirim(id_pengirim),
    constraint PK_nomorhppengirim primary key (id_pengirim, no_hp_pengirim)
);

Create Table Cabang(
  id_cabang varchar2(4) primary key,
  nama_cabang varchar2(50),
  alamat_cabang varchar2(50)
);

Create Table NomorHPCabang (
    id_cabang varchar2(4),
    no_hp_cabang varchar2(20),
    constraint FK_nomorhpcabang foreign key (id_cabang) references cabang(id_cabang),
    constraint PK_nomorhpcabang primary key (id_cabang, no_hp_cabang)
);

Create Table Admin (
    id_admin varchar2(4),
    id_cabang varchar2(4),
    nama_depan_admin varchar2(50),
    nama_belakang_admin varchar2(50),
    CONSTRAINT PK_Admin  PRIMARY KEY (id_admin),
    CONSTRAINT FK_Admin FOREIGN KEY (id_cabang) REFERENCES Cabang(id_cabang)
);


Create Table Penerima(
    id_penerima varchar2(4) primary key,
    nama_depan_penerima varchar2(50),
    nama_belakang_penerima varchar2(50),
    alamat_penerima varchar2(50)
);

Create Table NomorHPPenerima (
    id_penerima varchar2(4),
    no_hp_penerima varchar2(20),
    constraint FK_NomorHPPenerima foreign key (id_penerima) references penerima(id_penerima),
    constraint PK_NomorHPPenerima primary key (id_penerima, no_hp_penerima)
);

Create Table Layanan(
    id_layanan varchar2(4) primary key,
    nama_layanan varchar2(50),
    biayaperjarak number
);

Create Table DataPaket(
  id_paket varchar2(4),
  id_pengirim varchar2(4),
  id_penerima varchar2(4),
  id_layanan varchar2(4),
  id_admin varchar2(4),
  hari_kirim varchar2(50),
  tanggal_kirim DATE,
  waktu_kirim varchar2(4),
  jenis_paket varchar2(50),
  berat_paket NUMBER(2,1),
  harga_paket NUMBER,
  biaya NUMBER,
  CONSTRAINT PK_DataPaket  PRIMARY KEY (id_paket),
  CONSTRAINT FK1_DataPaket FOREIGN KEY (id_pengirim) REFERENCES Pengirim(id_pengirim),
  CONSTRAINT FK2_DataPaket FOREIGN KEY (id_penerima) REFERENCES Penerima(id_penerima),
  CONSTRAINT FK3_DataPaket FOREIGN KEY (id_layanan) REFERENCES Layanan(id_layanan),
  CONSTRAINT FK4_DataPaket FOREIGN KEY (id_admin) REFERENCES Admin(id_admin)
);

Create Table Laporan (
  id_laporan varchar2(4),
  id_paket varchar2(4),
  hari_terima varchar2(50),
  tanggal_terima DATE,
  waktu_terima varchar2(4),
  penerima_paket varchar2(50),
  CONSTRAINT PK_Laporan  PRIMARY KEY (id_laporan),
  CONSTRAINT FK_Laporan FOREIGN KEY (id_paket) REFERENCES DataPaket(id_paket)
);


--Input Data
INSERT INTO pengirim(ID_Pengirim,nama_depan_pengirim,nama_belakang_pengirim,alamat_pengirim) VALUES ('0101','Ikhsan','Maulana','Medan');
INSERT INTO pengirim(ID_Pengirim,nama_depan_pengirim,nama_belakang_pengirim,alamat_pengirim) VALUES ('0102','Diva','Syahira','Bandung');
INSERT INTO pengirim(ID_Pengirim,nama_depan_pengirim,nama_belakang_pengirim,alamat_pengirim) VALUES ('0103','Rangga','Lesmana','Medan');
INSERT INTO pengirim(ID_Pengirim,nama_depan_pengirim,nama_belakang_pengirim,alamat_pengirim) VALUES ('0104','Maulana','Sidiq','Medan');
INSERT INTO pengirim(ID_Pengirim,nama_depan_pengirim,nama_belakang_pengirim,alamat_pengirim) VALUES ('0105','Fadil','Akbar','Bogor');
INSERT INTO pengirim(ID_Pengirim,nama_depan_pengirim,nama_belakang_pengirim,alamat_pengirim) VALUES ('0106','Fauqo','Aqli','Medan');
INSERT INTO pengirim(ID_Pengirim,nama_depan_pengirim,nama_belakang_pengirim,alamat_pengirim) VALUES ('0107','Sayyid','Aqilah','Jakarta');
INSERT INTO pengirim(ID_Pengirim,nama_depan_pengirim,nama_belakang_pengirim,alamat_pengirim) VALUES ('0108','Aldoni','Ibrahim','Medan');
INSERT INTO pengirim(ID_Pengirim,nama_depan_pengirim,nama_belakang_pengirim,alamat_pengirim) VALUES ('0109','Citakamalia','Affan','Bandung');
INSERT INTO pengirim(ID_Pengirim,nama_depan_pengirim,nama_belakang_pengirim,alamat_pengirim) VALUES ('0110','Thoriq','Abdurrahman','Jakarta');
INSERT INTO pengirim(ID_Pengirim,nama_depan_pengirim,nama_belakang_pengirim,alamat_pengirim) VALUES ('0111','Arda','Ardiyansyah','Bogor');
INSERT INTO pengirim(ID_Pengirim,nama_depan_pengirim,nama_belakang_pengirim,alamat_pengirim) VALUES ('0112','Christian','Wayong','Jakarta');
INSERT INTO pengirim(ID_Pengirim,nama_depan_pengirim,nama_belakang_pengirim,alamat_pengirim) VALUES ('0113','Randy','Akram','Jakarta');
INSERT INTO pengirim(ID_Pengirim,nama_depan_pengirim,nama_belakang_pengirim,alamat_pengirim) VALUES ('0114','Raisul','Prabankoro','Jakarta');
INSERT INTO pengirim(ID_Pengirim,nama_depan_pengirim,nama_belakang_pengirim,alamat_pengirim) VALUES ('0115','Ghina','Annisa','Bogor');
INSERT INTO pengirim(ID_Pengirim,nama_depan_pengirim,nama_belakang_pengirim,alamat_pengirim) VALUES ('0116','Indah','Putri','Medan');
INSERT INTO pengirim(ID_Pengirim,nama_depan_pengirim,nama_belakang_pengirim,alamat_pengirim) VALUES ('0117','Maharani','Yanuar','Medan');
INSERT INTO pengirim(ID_Pengirim,nama_depan_pengirim,nama_belakang_pengirim,alamat_pengirim) VALUES ('0118','Salman','Tilmitasani','Bogor');
INSERT INTO pengirim(ID_Pengirim,nama_depan_pengirim,nama_belakang_pengirim,alamat_pengirim) VALUES ('0119','Daffa','Ferdiansyah','Bandung');
INSERT INTO pengirim(ID_Pengirim,nama_depan_pengirim,nama_belakang_pengirim,alamat_pengirim) VALUES ('0120','Muhammad','Naufal','Jakarta');
INSERT INTO pengirim(ID_Pengirim,nama_depan_pengirim,nama_belakang_pengirim,alamat_pengirim) VALUES ('0121','Naufal','Yuliana','Bandung');
INSERT INTO pengirim(ID_Pengirim,nama_depan_pengirim,nama_belakang_pengirim,alamat_pengirim) VALUES ('0122','Rizky','Firdaus','Bogor');
INSERT INTO pengirim(ID_Pengirim,nama_depan_pengirim,nama_belakang_pengirim,alamat_pengirim) VALUES ('0123','Arsy','Bagja','Bandung');
INSERT INTO pengirim(ID_Pengirim,nama_depan_pengirim,nama_belakang_pengirim,alamat_pengirim) VALUES ('0124','Rafid','Mustaghfirin','Bogor');
INSERT INTO pengirim(ID_Pengirim,nama_depan_pengirim,nama_belakang_pengirim,alamat_pengirim) VALUES ('0125','Agis','Panel','Medan');
INSERT INTO pengirim(ID_Pengirim,nama_depan_pengirim,nama_belakang_pengirim,alamat_pengirim) VALUES ('0126','Rafl','Ramdhan','Bandung');
INSERT INTO pengirim(ID_Pengirim,nama_depan_pengirim,nama_belakang_pengirim,alamat_pengirim) VALUES ('0127','Reyfasha','Ilhami','Bogor');
INSERT INTO pengirim(ID_Pengirim,nama_depan_pengirim,nama_belakang_pengirim,alamat_pengirim) VALUES ('0128','Galan','Nitisara','Bogor');
INSERT INTO pengirim(ID_Pengirim,nama_depan_pengirim,nama_belakang_pengirim,alamat_pengirim) VALUES ('0129','Putri','Hawa','Bandung');
INSERT INTO pengirim(ID_Pengirim,nama_depan_pengirim,nama_belakang_pengirim,alamat_pengirim) VALUES ('0130','Putri','Nabila','Medan');

INSERT INTO penerima(ID_Penerima,nama_depan_penerima,nama_belakang_penerima,alamat_penerima) VALUES ('0201','Kaenova','Mahendra','Bogor');
INSERT INTO penerima(ID_Penerima,nama_depan_penerima,nama_belakang_penerima,alamat_penerima) VALUES ('0202','Rafli','Ramadhan','Bandung');
INSERT INTO penerima(ID_Penerima,nama_depan_penerima,nama_belakang_penerima,alamat_penerima) VALUES ('0203','Aditya','Koeswojo','Medan');
INSERT INTO penerima(ID_Penerima,nama_depan_penerima,nama_belakang_penerima,alamat_penerima) VALUES ('0204','Bambang','Subianto','Jakarta');
INSERT INTO penerima(ID_Penerima,nama_depan_penerima,nama_belakang_penerima,alamat_penerima) VALUES ('0205','Catherine','Yoshawirja','Bogor');
INSERT INTO penerima(ID_Penerima,nama_depan_penerima,nama_belakang_penerima,alamat_penerima) VALUES ('0206','Hadi','Suginawan','Bandung');
INSERT INTO penerima(ID_Penerima,nama_depan_penerima,nama_belakang_penerima,alamat_penerima) VALUES ('0207','Lanasari','Halim','Medan');
INSERT INTO penerima(ID_Penerima,nama_depan_penerima,nama_belakang_penerima,alamat_penerima) VALUES ('0208','Nanik','Santoso','Jakarta');
INSERT INTO penerima(ID_Penerima,nama_depan_penerima,nama_belakang_penerima,alamat_penerima) VALUES ('0209','Fahmi','Idris','Medan');
INSERT INTO penerima(ID_Penerima,nama_depan_penerima,nama_belakang_penerima,alamat_penerima) VALUES ('0210','Kaman','Halim','Bandung');
INSERT INTO penerima(ID_Penerima,nama_depan_penerima,nama_belakang_penerima,alamat_penerima) VALUES ('0211','Nila','Fatina','Jakarta');
INSERT INTO penerima(ID_Penerima,nama_depan_penerima,nama_belakang_penerima,alamat_penerima) VALUES ('0212','Tan','Lunardi','Bandung');
INSERT INTO penerima(ID_Penerima,nama_depan_penerima,nama_belakang_penerima,alamat_penerima) VALUES ('0213','Widjojo','Soejono','Bandung');
INSERT INTO penerima(ID_Penerima,nama_depan_penerima,nama_belakang_penerima,alamat_penerima) VALUES ('0214','Yap','Johanes','Bogor');
INSERT INTO penerima(ID_Penerima,nama_depan_penerima,nama_belakang_penerima,alamat_penerima) VALUES ('0215','Lie','Soemarli','Medan');
INSERT INTO penerima(ID_Penerima,nama_depan_penerima,nama_belakang_penerima,alamat_penerima) VALUES ('0216','Jennie','Widjaya','Jakarta');
INSERT INTO penerima(ID_Penerima,nama_depan_penerima,nama_belakang_penerima,alamat_penerima) VALUES ('0217','Gunawan','Jusuf','Medan');
INSERT INTO penerima(ID_Penerima,nama_depan_penerima,nama_belakang_penerima,alamat_penerima) VALUES ('0218','Indra','Widjaja','Medan');
INSERT INTO penerima(ID_Penerima,nama_depan_penerima,nama_belakang_penerima,alamat_penerima) VALUES ('0219','RAIHAN','FAUZI','Bandung');
INSERT INTO penerima(ID_Penerima,nama_depan_penerima,nama_belakang_penerima,alamat_penerima) VALUES ('0220','BILLY','HADIPUSPITO','Bandung');
INSERT INTO penerima(ID_Penerima,nama_depan_penerima,nama_belakang_penerima,alamat_penerima) VALUES ('0221','FADHLY','AL-FARIZI','Bandung');
INSERT INTO penerima(ID_Penerima,nama_depan_penerima,nama_belakang_penerima,alamat_penerima) VALUES ('0222','ILHAM','ADISYAH','Bogor');
INSERT INTO penerima(ID_Penerima,nama_depan_penerima,nama_belakang_penerima,alamat_penerima) VALUES ('0223','Fachry','Gunawan','Jakarta');
INSERT INTO penerima(ID_Penerima,nama_depan_penerima,nama_belakang_penerima,alamat_penerima) VALUES ('0224','KURNIA','Roy','Medan');
INSERT INTO penerima(ID_Penerima,nama_depan_penerima,nama_belakang_penerima,alamat_penerima) VALUES ('0225','Julianoel','KHANSA','Bandung');
INSERT INTO penerima(ID_Penerima,nama_depan_penerima,nama_belakang_penerima,alamat_penerima) VALUES ('0226','HELLEN','FAYI','Jakarta');
INSERT INTO penerima(ID_Penerima,nama_depan_penerima,nama_belakang_penerima,alamat_penerima) VALUES ('0227','GALIH','ATHA','Jakarta');
INSERT INTO penerima(ID_Penerima,nama_depan_penerima,nama_belakang_penerima,alamat_penerima) VALUES ('0228','NAUFAL','ADRIAN','Bandung');
INSERT INTO penerima(ID_Penerima,nama_depan_penerima,nama_belakang_penerima,alamat_penerima) VALUES ('0229','M GHIYAATS DAFFA','HIDAYAT','Bogor');
INSERT INTO penerima(ID_Penerima,nama_depan_penerima,nama_belakang_penerima,alamat_penerima) VALUES ('0230','SYIFA','NUR','Bandung');

INSERT INTO cabang(ID_Cabang,nama_cabang,alamat_cabang) VALUES ('0301','Flora','Bogor');
INSERT INTO cabang(ID_Cabang,nama_cabang,alamat_cabang) VALUES ('0302','Farah','Jakarta');
INSERT INTO cabang(ID_Cabang,nama_cabang,alamat_cabang) VALUES ('0303','Rodney','Bandung');
INSERT INTO cabang(ID_Cabang,nama_cabang,alamat_cabang) VALUES ('0304','Ruthe','Jakarta');
INSERT INTO cabang(ID_Cabang,nama_cabang,alamat_cabang) VALUES ('0305','Eboni','Jakarta');
INSERT INTO cabang(ID_Cabang,nama_cabang,alamat_cabang) VALUES ('0306','Terresa','Bandung');
INSERT INTO cabang(ID_Cabang,nama_cabang,alamat_cabang) VALUES ('0307','Art','Medan');
INSERT INTO cabang(ID_Cabang,nama_cabang,alamat_cabang) VALUES ('0308','Raylene','Medan');
INSERT INTO cabang(ID_Cabang,nama_cabang,alamat_cabang) VALUES ('0309','Justa','Bandung');
INSERT INTO cabang(ID_Cabang,nama_cabang,alamat_cabang) VALUES ('0310','Juana','Bogor');
INSERT INTO cabang(ID_Cabang,nama_cabang,alamat_cabang) VALUES ('0311','Creola','Jakarta');
INSERT INTO cabang(ID_Cabang,nama_cabang,alamat_cabang) VALUES ('0312','Dorine','Bandung');
INSERT INTO cabang(ID_Cabang,nama_cabang,alamat_cabang) VALUES ('0313','Danae','Medan');
INSERT INTO cabang(ID_Cabang,nama_cabang,alamat_cabang) VALUES ('0314','Chan','Bandung');
INSERT INTO cabang(ID_Cabang,nama_cabang,alamat_cabang) VALUES ('0315','Loretta','Jakarta');
INSERT INTO cabang(ID_Cabang,nama_cabang,alamat_cabang) VALUES ('0316','Jacquetta','Medan');
INSERT INTO cabang(ID_Cabang,nama_cabang,alamat_cabang) VALUES ('0317','Clemencia','Bogor');
INSERT INTO cabang(ID_Cabang,nama_cabang,alamat_cabang) VALUES ('0318','Lean','Bandung');
INSERT INTO cabang(ID_Cabang,nama_cabang,alamat_cabang) VALUES ('0319','Delia','Medan');
INSERT INTO cabang(ID_Cabang,nama_cabang,alamat_cabang) VALUES ('0320','Laraine','Bandung');
INSERT INTO cabang(ID_Cabang,nama_cabang,alamat_cabang) VALUES ('0321','Joann','Bogor');
INSERT INTO cabang(ID_Cabang,nama_cabang,alamat_cabang) VALUES ('0322','Eryn','Bogor');
INSERT INTO cabang(ID_Cabang,nama_cabang,alamat_cabang) VALUES ('0323','Jamar','Bogor');
INSERT INTO cabang(ID_Cabang,nama_cabang,alamat_cabang) VALUES ('0324','Serena','Bandung');
INSERT INTO cabang(ID_Cabang,nama_cabang,alamat_cabang) VALUES ('0325','Robbin','Bogor');
INSERT INTO cabang(ID_Cabang,nama_cabang,alamat_cabang) VALUES ('0326','Deja','Medan');
INSERT INTO cabang(ID_Cabang,nama_cabang,alamat_cabang) VALUES ('0327','Trudi','Bandung');
INSERT INTO cabang(ID_Cabang,nama_cabang,alamat_cabang) VALUES ('0328','Carlie','Jakarta');
INSERT INTO cabang(ID_Cabang,nama_cabang,alamat_cabang) VALUES ('0329','Lang','Medan');
INSERT INTO cabang(ID_Cabang,nama_cabang,alamat_cabang) VALUES ('0330','Meri','Bandung');

INSERT INTO admin(ID_Admin,nama_depan_admin,nama_belakang_admin,ID_Cabang) VALUES ('1101','Azzam','Fadhil','0330');
INSERT INTO admin(ID_Admin,nama_depan_admin,nama_belakang_admin,ID_Cabang) VALUES ('1102','Afri','Almuharram','0329');
INSERT INTO admin(ID_Admin,nama_depan_admin,nama_belakang_admin,ID_Cabang) VALUES ('1103','Rifky','Aulia','0328');
INSERT INTO admin(ID_Admin,nama_depan_admin,nama_belakang_admin,ID_Cabang) VALUES ('1104','Rexcy','Putra','0327');
INSERT INTO admin(ID_Admin,nama_depan_admin,nama_belakang_admin,ID_Cabang) VALUES ('1105','Shinta','Dewi','0326');
INSERT INTO admin(ID_Admin,nama_depan_admin,nama_belakang_admin,ID_Cabang) VALUES ('1106','Rizvan','Aldi','0325');
INSERT INTO admin(ID_Admin,nama_depan_admin,nama_belakang_admin,ID_Cabang) VALUES ('1107','M Daffa','Khairi','0324');
INSERT INTO admin(ID_Admin,nama_depan_admin,nama_belakang_admin,ID_Cabang) VALUES ('1108','Muhammad','Fadli','0323');
INSERT INTO admin(ID_Admin,nama_depan_admin,nama_belakang_admin,ID_Cabang) VALUES ('1109','Bima','Putra','0322');
INSERT INTO admin(ID_Admin,nama_depan_admin,nama_belakang_admin,ID_Cabang) VALUES ('1110','Aine','Rudcoll','0321');
INSERT INTO admin(ID_Admin,nama_depan_admin,nama_belakang_admin,ID_Cabang) VALUES ('1111','Sofyan','Rinaldi','0320');
INSERT INTO admin(ID_Admin,nama_depan_admin,nama_belakang_admin,ID_Cabang) VALUES ('1112','Nur','Afina','0319');
INSERT INTO admin(ID_Admin,nama_depan_admin,nama_belakang_admin,ID_Cabang) VALUES ('1113','Zidan','Rizky','0318');
INSERT INTO admin(ID_Admin,nama_depan_admin,nama_belakang_admin,ID_Cabang) VALUES ('1114','Michel','Zudith','0317');
INSERT INTO admin(ID_Admin,nama_depan_admin,nama_belakang_admin,ID_Cabang) VALUES ('1115','Muhammad','Farhan','0316');
INSERT INTO admin(ID_Admin,nama_depan_admin,nama_belakang_admin,ID_Cabang) VALUES ('1116','Haviza','Aufa','0315');
INSERT INTO admin(ID_Admin,nama_depan_admin,nama_belakang_admin,ID_Cabang) VALUES ('1117','Armadhani','Hiro','0314');
INSERT INTO admin(ID_Admin,nama_depan_admin,nama_belakang_admin,ID_Cabang) VALUES ('1118','Gerin','Aryo','0313');
INSERT INTO admin(ID_Admin,nama_depan_admin,nama_belakang_admin,ID_Cabang) VALUES ('1119','Salma','Firdauz','0312');
INSERT INTO admin(ID_Admin,nama_depan_admin,nama_belakang_admin,ID_Cabang) VALUES ('1120','Bagja','Kurniawan','0311');
INSERT INTO admin(ID_Admin,nama_depan_admin,nama_belakang_admin,ID_Cabang) VALUES ('1121','Ibrahim','Muhammad','0310');
INSERT INTO admin(ID_Admin,nama_depan_admin,nama_belakang_admin,ID_Cabang) VALUES ('1122','Windy','Ramadhanti','0309');
INSERT INTO admin(ID_Admin,nama_depan_admin,nama_belakang_admin,ID_Cabang) VALUES ('1123','Dita','Julaika','0308');
INSERT INTO admin(ID_Admin,nama_depan_admin,nama_belakang_admin,ID_Cabang) VALUES ('1124','Aditya','Andar','0307');
INSERT INTO admin(ID_Admin,nama_depan_admin,nama_belakang_admin,ID_Cabang) VALUES ('1125','Jihan','Nabilah','0306');
INSERT INTO admin(ID_Admin,nama_depan_admin,nama_belakang_admin,ID_Cabang) VALUES ('1126','Izma','Mardiana','0305');
INSERT INTO admin(ID_Admin,nama_depan_admin,nama_belakang_admin,ID_Cabang) VALUES ('1127','Nalurisa','Adhieguna','0304');
INSERT INTO admin(ID_Admin,nama_depan_admin,nama_belakang_admin,ID_Cabang) VALUES ('1128','Sanding','Rachmat Yasin','0303');
INSERT INTO admin(ID_Admin,nama_depan_admin,nama_belakang_admin,ID_Cabang) VALUES ('1129','I Wayan','Adi Wahyudi','0302');
INSERT INTO admin(ID_Admin,nama_depan_admin,nama_belakang_admin,ID_Cabang) VALUES ('1130','Ramadito','Ferdian Assa','0301');

INSERT INTO layanan(ID_layanan,nama_layanan,biayaperjarak) VALUES ('0401','Lemot',1000);
INSERT INTO layanan(ID_layanan,nama_layanan,biayaperjarak) VALUES ('0402','Sedang',2000);
INSERT INTO layanan(ID_layanan,nama_layanan,biayaperjarak) VALUES ('0403','Cepat',3000);

INSERT INTO NomorHPCabang(ID_Cabang,no_hp_cabang) VALUES ('0301','(776) 457-4318');
INSERT INTO NomorHPCabang(ID_Cabang,no_hp_cabang) VALUES ('0302','(775) 393-6723');
INSERT INTO NomorHPCabang(ID_Cabang,no_hp_cabang) VALUES ('0303','(264) 989-9131');
INSERT INTO NomorHPCabang(ID_Cabang,no_hp_cabang) VALUES ('0304','(449) 346-0315');
INSERT INTO NomorHPCabang(ID_Cabang,no_hp_cabang) VALUES ('0305','(404) 797-2138');
INSERT INTO NomorHPCabang(ID_Cabang,no_hp_cabang) VALUES ('0306','(819) 756-8231');
INSERT INTO NomorHPCabang(ID_Cabang,no_hp_cabang) VALUES ('0307','(681) 579-9242');
INSERT INTO NomorHPCabang(ID_Cabang,no_hp_cabang) VALUES ('0308','(545) 529-2896');
INSERT INTO NomorHPCabang(ID_Cabang,no_hp_cabang) VALUES ('0309','(411) 717-7094');
INSERT INTO NomorHPCabang(ID_Cabang,no_hp_cabang) VALUES ('0310','(566) 248-5720');
INSERT INTO NomorHPCabang(ID_Cabang,no_hp_cabang) VALUES ('0311','(297) 453-0825');
INSERT INTO NomorHPCabang(ID_Cabang,no_hp_cabang) VALUES ('0312','(853) 557-7955');
INSERT INTO NomorHPCabang(ID_Cabang,no_hp_cabang) VALUES ('0313','(455) 854-0831');
INSERT INTO NomorHPCabang(ID_Cabang,no_hp_cabang) VALUES ('0314','(666) 338-5836');
INSERT INTO NomorHPCabang(ID_Cabang,no_hp_cabang) VALUES ('0315','(877) 388-6756');
INSERT INTO NomorHPCabang(ID_Cabang,no_hp_cabang) VALUES ('0316','(475) 623-8315');
INSERT INTO NomorHPCabang(ID_Cabang,no_hp_cabang) VALUES ('0317','(517) 746-9928');
INSERT INTO NomorHPCabang(ID_Cabang,no_hp_cabang) VALUES ('0318','(931) 631-2139');
INSERT INTO NomorHPCabang(ID_Cabang,no_hp_cabang) VALUES ('0319','(799) 838-9010');
INSERT INTO NomorHPCabang(ID_Cabang,no_hp_cabang) VALUES ('0320','(800) 874-3193');
INSERT INTO NomorHPCabang(ID_Cabang,no_hp_cabang) VALUES ('0321','(803) 240-3167');
INSERT INTO NomorHPCabang(ID_Cabang,no_hp_cabang) VALUES ('0322','(878) 454-1217');
INSERT INTO NomorHPCabang(ID_Cabang,no_hp_cabang) VALUES ('0323','(799) 366-5925');
INSERT INTO NomorHPCabang(ID_Cabang,no_hp_cabang) VALUES ('0324','(630) 292-5762');
INSERT INTO NomorHPCabang(ID_Cabang,no_hp_cabang) VALUES ('0325','(862) 921-4646');
INSERT INTO NomorHPCabang(ID_Cabang,no_hp_cabang) VALUES ('0326','(333) 778-1544');
INSERT INTO NomorHPCabang(ID_Cabang,no_hp_cabang) VALUES ('0327','(295) 200-9192');
INSERT INTO NomorHPCabang(ID_Cabang,no_hp_cabang) VALUES ('0328','(986) 601-6033');
INSERT INTO NomorHPCabang(ID_Cabang,no_hp_cabang) VALUES ('0329','(918) 937-1664');
INSERT INTO NomorHPCabang(ID_Cabang,no_hp_cabang) VALUES ('0330','(369) 557-2313');

INSERT INTO NomorHPPenerima(ID_Penerima,no_hp_penerima) VALUES ('0227','(705) 280-8728');
INSERT INTO NomorHPPenerima(ID_Penerima,no_hp_penerima) VALUES ('0220','(906) 333-9898');
INSERT INTO NomorHPPenerima(ID_Penerima,no_hp_penerima) VALUES ('0227','(980) 751-7197');
INSERT INTO NomorHPPenerima(ID_Penerima,no_hp_penerima) VALUES ('0213','(442) 887-3515');
INSERT INTO NomorHPPenerima(ID_Penerima,no_hp_penerima) VALUES ('0220','(900) 842-4430');
INSERT INTO NomorHPPenerima(ID_Penerima,no_hp_penerima) VALUES ('0212','(863) 287-1907');
INSERT INTO NomorHPPenerima(ID_Penerima,no_hp_penerima) VALUES ('0218','(570) 994-2206');
INSERT INTO NomorHPPenerima(ID_Penerima,no_hp_penerima) VALUES ('0215','(574) 407-7401');
INSERT INTO NomorHPPenerima(ID_Penerima,no_hp_penerima) VALUES ('0215','(645) 636-5034');
INSERT INTO NomorHPPenerima(ID_Penerima,no_hp_penerima) VALUES ('0204','(717) 957-9625');
INSERT INTO NomorHPPenerima(ID_Penerima,no_hp_penerima) VALUES ('0219','(660) 223-5775');
INSERT INTO NomorHPPenerima(ID_Penerima,no_hp_penerima) VALUES ('0208','(331) 943-1852');
INSERT INTO NomorHPPenerima(ID_Penerima,no_hp_penerima) VALUES ('0206','(764) 739-2634');
INSERT INTO NomorHPPenerima(ID_Penerima,no_hp_penerima) VALUES ('0216','(227) 414-1205');
INSERT INTO NomorHPPenerima(ID_Penerima,no_hp_penerima) VALUES ('0205','(658) 453-1997');
INSERT INTO NomorHPPenerima(ID_Penerima,no_hp_penerima) VALUES ('0220','(412) 702-2372');
INSERT INTO NomorHPPenerima(ID_Penerima,no_hp_penerima) VALUES ('0203','(551) 364-7973');
INSERT INTO NomorHPPenerima(ID_Penerima,no_hp_penerima) VALUES ('0227','(994) 400-6416');
INSERT INTO NomorHPPenerima(ID_Penerima,no_hp_penerima) VALUES ('0209','(502) 510-6710');
INSERT INTO NomorHPPenerima(ID_Penerima,no_hp_penerima) VALUES ('0207','(807) 295-2550');
INSERT INTO NomorHPPenerima(ID_Penerima,no_hp_penerima) VALUES ('0221','(957) 477-8520');
INSERT INTO NomorHPPenerima(ID_Penerima,no_hp_penerima) VALUES ('0218','(252) 738-1771');
INSERT INTO NomorHPPenerima(ID_Penerima,no_hp_penerima) VALUES ('0216','(659) 976-4353');
INSERT INTO NomorHPPenerima(ID_Penerima,no_hp_penerima) VALUES ('0202','(875) 644-4146');
INSERT INTO NomorHPPenerima(ID_Penerima,no_hp_penerima) VALUES ('0201','(825) 529-7679');
INSERT INTO NomorHPPenerima(ID_Penerima,no_hp_penerima) VALUES ('0214','(837) 691-9288');
INSERT INTO NomorHPPenerima(ID_Penerima,no_hp_penerima) VALUES ('0221','(730) 556-0823');
INSERT INTO NomorHPPenerima(ID_Penerima,no_hp_penerima) VALUES ('0212','(597) 767-3891');
INSERT INTO NomorHPPenerima(ID_Penerima,no_hp_penerima) VALUES ('0201','(452) 814-8863');
INSERT INTO NomorHPPenerima(ID_Penerima,no_hp_penerima) VALUES ('0218','(475) 328-0624');

INSERT INTO NomorHPPengirim(ID_Pengirim,no_hp_pengirim) VALUES ('0115','(445) 241-0240');
INSERT INTO NomorHPPengirim(ID_Pengirim,no_hp_pengirim) VALUES ('0103','(291) 676-3155');
INSERT INTO NomorHPPengirim(ID_Pengirim,no_hp_pengirim) VALUES ('0115','(335) 552-7664');
INSERT INTO NomorHPPengirim(ID_Pengirim,no_hp_pengirim) VALUES ('0121','(572) 975-5338');
INSERT INTO NomorHPPengirim(ID_Pengirim,no_hp_pengirim) VALUES ('0123','(809) 856-7279');
INSERT INTO NomorHPPengirim(ID_Pengirim,no_hp_pengirim) VALUES ('0120','(668) 514-1570');
INSERT INTO NomorHPPengirim(ID_Pengirim,no_hp_pengirim) VALUES ('0124','(217) 730-6935');
INSERT INTO NomorHPPengirim(ID_Pengirim,no_hp_pengirim) VALUES ('0118','(926) 630-1042');
INSERT INTO NomorHPPengirim(ID_Pengirim,no_hp_pengirim) VALUES ('0116','(400) 703-6668');
INSERT INTO NomorHPPengirim(ID_Pengirim,no_hp_pengirim) VALUES ('0108','(410) 871-5100');
INSERT INTO NomorHPPengirim(ID_Pengirim,no_hp_pengirim) VALUES ('0104','(596) 236-8921');
INSERT INTO NomorHPPengirim(ID_Pengirim,no_hp_pengirim) VALUES ('0117','(526) 988-0083');
INSERT INTO NomorHPPengirim(ID_Pengirim,no_hp_pengirim) VALUES ('0130','(676) 725-5063');
INSERT INTO NomorHPPengirim(ID_Pengirim,no_hp_pengirim) VALUES ('0116','(824) 408-6136');
INSERT INTO NomorHPPengirim(ID_Pengirim,no_hp_pengirim) VALUES ('0129','(904) 654-4676');
INSERT INTO NomorHPPengirim(ID_Pengirim,no_hp_pengirim) VALUES ('0106','(640) 237-5474');
INSERT INTO NomorHPPengirim(ID_Pengirim,no_hp_pengirim) VALUES ('0129','(788) 360-8322');
INSERT INTO NomorHPPengirim(ID_Pengirim,no_hp_pengirim) VALUES ('0118','(247) 588-7474');
INSERT INTO NomorHPPengirim(ID_Pengirim,no_hp_pengirim) VALUES ('0124','(431) 914-1935');
INSERT INTO NomorHPPengirim(ID_Pengirim,no_hp_pengirim) VALUES ('0106','(993) 647-9466');
INSERT INTO NomorHPPengirim(ID_Pengirim,no_hp_pengirim) VALUES ('0114','(571) 979-5237');
INSERT INTO NomorHPPengirim(ID_Pengirim,no_hp_pengirim) VALUES ('0125','(818) 432-7796');
INSERT INTO NomorHPPengirim(ID_Pengirim,no_hp_pengirim) VALUES ('0111','(504) 404-7921');
INSERT INTO NomorHPPengirim(ID_Pengirim,no_hp_pengirim) VALUES ('0120','(514) 950-0658');
INSERT INTO NomorHPPengirim(ID_Pengirim,no_hp_pengirim) VALUES ('0125','(263) 407-3372');
INSERT INTO NomorHPPengirim(ID_Pengirim,no_hp_pengirim) VALUES ('0116','(786) 897-5645');
INSERT INTO NomorHPPengirim(ID_Pengirim,no_hp_pengirim) VALUES ('0128','(268) 278-8704');
INSERT INTO NomorHPPengirim(ID_Pengirim,no_hp_pengirim) VALUES ('0118','(740) 255-1051');
INSERT INTO NomorHPPengirim(ID_Pengirim,no_hp_pengirim) VALUES ('0107','(391) 754-3539');
INSERT INTO NomorHPPengirim(ID_Pengirim,no_hp_pengirim) VALUES ('0103','(917) 499-0431');

INSERT INTO DataPaket(ID_Paket,ID_Pengirim,ID_Penerima,ID_Layanan,ID_Admin,hari_kirim,tanggal_kirim,waktu_kirim,jenis_paket,berat_paket,harga_paket,biaya) VALUES ('2001','0108','0225','0401','1128','Tue','6-Oct-2020','1300','Dokumen',0.1,6000,4000);
INSERT INTO DataPaket(ID_Paket,ID_Pengirim,ID_Penerima,ID_Layanan,ID_Admin,hari_kirim,tanggal_kirim,waktu_kirim,jenis_paket,berat_paket,harga_paket,biaya) VALUES ('2002','0129','0223','0401','1119','Wed','7-Oct-2020','1249','Makanan',1,20000,8000);
INSERT INTO DataPaket(ID_Paket,ID_Pengirim,ID_Penerima,ID_Layanan,ID_Admin,hari_kirim,tanggal_kirim,waktu_kirim,jenis_paket,berat_paket,harga_paket,biaya) VALUES ('2003','0108','0224','0401','1129','Thu','8-Oct-2020','1718','Minuman',2,10000,15000);
INSERT INTO DataPaket(ID_Paket,ID_Pengirim,ID_Penerima,ID_Layanan,ID_Admin,hari_kirim,tanggal_kirim,waktu_kirim,jenis_paket,berat_paket,harga_paket,biaya) VALUES ('2004','0123','0204','0402','1120','Fri','9-Oct-2020','1720','Dokumen',0.2,6000,8000);
INSERT INTO DataPaket(ID_Paket,ID_Pengirim,ID_Penerima,ID_Layanan,ID_Admin,hari_kirim,tanggal_kirim,waktu_kirim,jenis_paket,berat_paket,harga_paket,biaya) VALUES ('2005','0112','0223','0402','1104','Sat','10-Oct-2020','1420','Elektronik',4,2000000,16000);
INSERT INTO DataPaket(ID_Paket,ID_Pengirim,ID_Penerima,ID_Layanan,ID_Admin,hari_kirim,tanggal_kirim,waktu_kirim,jenis_paket,berat_paket,harga_paket,biaya) VALUES ('2006','0119','0217','0403','1114','Sun','11-Oct-2020','0900','Cairan',3,100000,45000);
INSERT INTO DataPaket(ID_Paket,ID_Pengirim,ID_Penerima,ID_Layanan,ID_Admin,hari_kirim,tanggal_kirim,waktu_kirim,jenis_paket,berat_paket,harga_paket,biaya) VALUES ('2007','0120','0225','0402','1112','Mon','12-Oct-2020','0800','Makanan',2,20000,30000);
INSERT INTO DataPaket(ID_Paket,ID_Pengirim,ID_Penerima,ID_Layanan,ID_Admin,hari_kirim,tanggal_kirim,waktu_kirim,jenis_paket,berat_paket,harga_paket,biaya) VALUES ('2008','0129','0223','0401','1120','Tue','13-Oct-2020','1130','Minuman',2,50000,4000);
INSERT INTO DataPaket(ID_Paket,ID_Pengirim,ID_Penerima,ID_Layanan,ID_Admin,hari_kirim,tanggal_kirim,waktu_kirim,jenis_paket,berat_paket,harga_paket,biaya) VALUES ('2009','0121','0216','0402','1108','Wed','14-Oct-2020','1018','Dokumen',0.1,6000,12000);
INSERT INTO DataPaket(ID_Paket,ID_Pengirim,ID_Penerima,ID_Layanan,ID_Admin,hari_kirim,tanggal_kirim,waktu_kirim,jenis_paket,berat_paket,harga_paket,biaya) VALUES ('2010','0113','0226','0402','1104','Thu','15-Oct-2020','0920','Dokumen',0.3,6000,16000);
INSERT INTO DataPaket(ID_Paket,ID_Pengirim,ID_Penerima,ID_Layanan,ID_Admin,hari_kirim,tanggal_kirim,waktu_kirim,jenis_paket,berat_paket,harga_paket,biaya) VALUES ('2011','0105','0221','0403','1127','Fri','16-Oct-2020','1245','Dokumen',0.2,6000,24000);
INSERT INTO DataPaket(ID_Paket,ID_Pengirim,ID_Penerima,ID_Layanan,ID_Admin,hari_kirim,tanggal_kirim,waktu_kirim,jenis_paket,berat_paket,harga_paket,biaya) VALUES ('2012','0114','0213','0401','1103','Sat','17-Oct-2020','1310','Makanan',5,20000,8000);
INSERT INTO DataPaket(ID_Paket,ID_Pengirim,ID_Penerima,ID_Layanan,ID_Admin,hari_kirim,tanggal_kirim,waktu_kirim,jenis_paket,berat_paket,harga_paket,biaya) VALUES ('2013','0102','0212','0403','1128','Sun','18-Oct-2020','1450','Minuman',4,3000,12000);
INSERT INTO DataPaket(ID_Paket,ID_Pengirim,ID_Penerima,ID_Layanan,ID_Admin,hari_kirim,tanggal_kirim,waktu_kirim,jenis_paket,berat_paket,harga_paket,biaya) VALUES ('2014','0129','0229','0401','1109','Mon','19-Oct-2020','1610','Elektronik',6,2000000,4000);
INSERT INTO DataPaket(ID_Paket,ID_Pengirim,ID_Penerima,ID_Layanan,ID_Admin,hari_kirim,tanggal_kirim,waktu_kirim,jenis_paket,berat_paket,harga_paket,biaya) VALUES ('2015','0129','0224','0401','1107','Tue','20-Oct-2020','1600','Elektronik',7,2000000,15000);

INSERT INTO Laporan(ID_Laporan,ID_Paket,hari_terima,tanggal_terima,waktu_terima,penerima_paket) VALUES ('2101','2001','Fri','9-Oct-2020','1830','Udin');
INSERT INTO Laporan(ID_Laporan,ID_Paket,hari_terima,tanggal_terima,waktu_terima,penerima_paket) VALUES ('2102','2002','Sat','10-Oct-2020','1200','Udun');
INSERT INTO Laporan(ID_Laporan,ID_Paket,hari_terima,tanggal_terima,waktu_terima,penerima_paket) VALUES ('2103','2003','Sun','11-Oct-2020','1900','Edun');
INSERT INTO Laporan(ID_Laporan,ID_Paket,hari_terima,tanggal_terima,waktu_terima,penerima_paket) VALUES ('2104','2004','Mon','12-Oct-2020','1418','Badun');
INSERT INTO Laporan(ID_Laporan,ID_Paket,hari_terima,tanggal_terima,waktu_terima,penerima_paket) VALUES ('2105','2005','Tue','13-Oct-2020','0915','Kudun');
INSERT INTO Laporan(ID_Laporan,ID_Paket,hari_terima,tanggal_terima,waktu_terima,penerima_paket) VALUES ('2106','2006','Wed','14-Oct-2020','1045','Hadun');
INSERT INTO Laporan(ID_Laporan,ID_Paket,hari_terima,tanggal_terima,waktu_terima,penerima_paket) VALUES ('2107','2007','Thu','15-Oct-2020','1818','Jadun');
INSERT INTO Laporan(ID_Laporan,ID_Paket,hari_terima,tanggal_terima,waktu_terima,penerima_paket) VALUES ('2108','2008','Fri','16-Oct-2020','1516','Bradun');
INSERT INTO Laporan(ID_Laporan,ID_Paket,hari_terima,tanggal_terima,waktu_terima,penerima_paket) VALUES ('2109','2009','Sat','17-Oct-2020','1710','Dundun');
INSERT INTO Laporan(ID_Laporan,ID_Paket,hari_terima,tanggal_terima,waktu_terima,penerima_paket) VALUES ('2110','2010','Sun','18-Oct-2020','1145','Kadun');
INSERT INTO Laporan(ID_Laporan,ID_Paket,hari_terima,tanggal_terima,waktu_terima,penerima_paket) VALUES ('2111','2011','Mon','19-Oct-2020','1500','Kedun');
INSERT INTO Laporan(ID_Laporan,ID_Paket,hari_terima,tanggal_terima,waktu_terima,penerima_paket) VALUES ('2112','2012','Tue','20-Oct-2020','1430','Ledun');
INSERT INTO Laporan(ID_Laporan,ID_Paket,hari_terima,tanggal_terima,waktu_terima,penerima_paket) VALUES ('2113','2013','Wed','21-Oct-2020','1325','Ladun');
INSERT INTO Laporan(ID_Laporan,ID_Paket,hari_terima,tanggal_terima,waktu_terima,penerima_paket) VALUES ('2114','2014','Thu','22-Oct-2020','1230','Lidun');
INSERT INTO Laporan(ID_Laporan,ID_Paket,hari_terima,tanggal_terima,waktu_terima,penerima_paket) VALUES ('2115','2015','Fri','23-Oct-2020','1545','Kidun');
