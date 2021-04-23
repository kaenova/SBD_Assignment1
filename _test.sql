--Show All Table
set pages 999;

col count format 999,999,999;
spool countlist.txt

select
   table_name,
   to_number(
   extractvalue(
      xmltype(
         dbms_xmlgen.getxml('select count(*) c from '||table_name))
    ,'/ROWSET/ROW/C')) count
from 
   user_tables
order by 
   table_name;

spool off;

--Query 1
create index Query1 on DataPaket (hari_kirim);

select *
from datapaket 
where hari_kirim = 'Sun';

--Query 2
create index Query3 on Pengirim (alamat_pengirim);

select id_paket, id_pengirim, alamat_pengirim, hari_kirim
from datapaket join pengirim using (id_pengirim)
where (hari_kirim = 'Sun') and (alamat_pengirim = 'Bandung');

--Query 3
create index Query4 on Penerima (alamat_penerima);

select nama_depan_penerima, nama_depan_pengirim, alamat_penerima, alamat_pengirim from DataPaket 
join penerima using(id_penerima)
join pengirim using (id_pengirim)
where (alamat_pengirim = alamat_penerima);

--Query 4
create index Query2 on Cabang (id_cabang);
create index Queryy2 on Admin (id_admin)

select * 
from admin 
join cabang using (id_cabang) 
where id_cabang= '03086';

--Query 5
create index Queryy on DataPaket (id_paket);

select id_paket, id_admin, nama_depan_admin, id_cabang, nama_cabang
from datapaket
join admin using (id_admin)
join cabang using (id_cabang)
where id_cabang = '03086';