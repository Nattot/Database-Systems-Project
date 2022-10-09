--1
go
create view [barang dan kategori smartphone]
as
select 
from barang b
	join kategori k on b.kategori_id=k.kategori_id
where b.kategori_id like '1'
go

--2
create view [Sum]
as
select nama_penerima, nama_barang, harga
from pesanan p
	join pesanan_detail pd on pd.pesanan_id=p.pesanan_id
	join barang b on b.barang_id = pd.barang_id
where quantity > 1
group by nama_penerima, nama_barang, harga
having avg(harga) < harga