<p style="font-size:14px" align="right">
<a href="https://t.me/autosultan_group" target="_blank">Join our telegram <img src="https://user-images.githubusercontent.com/50621007/183283867-56b4d69f-bc6e-4939-b00a-72aa019d1aea.png" width="30"/></a>
</p>
<p align="center">
  <img height="300" height="auto" src="https://user-images.githubusercontent.com/109174478/209359981-dc19b4bf-854d-4a2a-b803-2547a7fa43f2.jpg">
</p>

# TUTORIAL AR.io NODE

## Hal yang di perlukan sebelum garap
1. Siapkan domain bisa buy disini murah 15K : https://www.hostinger.co.id/
2. token Arweave $AR buy di Binance atau seller
3. Wallet $AR : https://chrome.google.com/webstore/detail/arconnect/einnioafmpimabjcddiinlhmijaionap

## SPEK VPS

|  Komponen |  Minimum |
| ------------ | ------------ |
| CPU  | 4CPU cores  |
| RAM | 4GB RAM |
| Storage  | 500GB |
| Bandwidth | 50mbps |

## Install Node
```
wget -O ar-node.sh https://raw.githubusercontent.com/sipalingnode/ar-node/main/ar-node.sh; chmod +x ar-node.sh; ./ar-node.sh
```
## Edit File (perhatikan tabel dibawah apa saja yang harus diganti)
```
cd ~/ar-io-node
nano .env
```
**Nanti didalam file isi dengan kata dibawah ini**
```
GRAPHQL_HOST=arweave.net
GRAPHQL_PORT=443
START_HEIGHT=1000000
ARNS_ROOT_HOST=ganti dengan domain lu
ADMIN_API_KEY=password lu bebas
AR_IO_WALLET=address dari AR wallet
```
**Keterangan yang harus diganti cek tabel dibawah**
| GRAPHQL_HOST | arweave.net |
| ------------ | ------------ |
| GRAPHQL_PORT | 443 |
| START_HEIGHT | 1000000 |
| ARNS_ROOT_HOST | ganti dengan domain lu |
| ADMIN_API_KEY | password lu bebas |
| AR_IO_WALLET | address dari AR wallet |

Kalo udah ganti semua lalu `CRL+XY Enter `

## Manage Domain (Pastikan domain kalian masih fresh tidak buat garap yang lain)
1. Login ke akun hostinger kalian
2. Pilih Domain > Manage Domain
3. Klik DNS > lalu hapus semua DNS bawaan
4. Tambahkan DNS baru
5. Settingannya samain aja kek digambar, bedanya cuman di IPVPS
<p align="center">
  <img height="200" height="auto" src="https://user-images.githubusercontent.com/109174478/270795435-587b575d-8e5a-4817-a3b1-797184aa0618.jpg">
</p>

## Setting SSL
1. Login ke VPS lagi
2. Lalu paste code yang dibawah (Perhatikan kodenya ada yang harus kalian ganti dibagian email & domain)
```
sudo certbot certonly --manual --preferred-challenges dns --email pakemailu@gmail.com -d domainlu -d '*.domainlu'
```
3. Cek gambar yang di garis bawah, kalian harus copy atau salin tuh kode di notepad
<p align="center">
  <img height="300" height="auto" src="https://user-images.githubusercontent.com/109174478/270798362-006848d8-4825-4739-9f6f-6f79e7c0d7d8.jpg">
</p>
4. Login ke akun hostinger kalian
5. Pilih Domain > Manage Domain
6. Klik DNS > Tambahkan DNS
7. Pilih type TXT
8. Name = `_acme-challenge`
