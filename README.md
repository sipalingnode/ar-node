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
  <img height="400" height="auto" src="https://user-images.githubusercontent.com/109174478/270798362-006848d8-4825-4739-9f6f-6f79e7c0d7d8.jpg">
</p>

4. Login ke akun hostinger kalian
5. Pilih Domain > Manage Domain
6. Klik DNS > Tambahkan DNS
7. Pilih type TXT
8. Name = `_acme-challenge`
9. Dibagian content isi pake kode yang udah di salin tadi
<p align="center">
  <img height="300" height="auto" src="https://user-images.githubusercontent.com/109174478/270802511-608f19ab-d48b-437f-b127-8a970cc074e8.jpg">
</p>

10. Cek dns kalian : https://dnschecker.org/#TXT/
11. Kalo dah aman maka hasilnya akan seperti gambar
<p align="center">
  <img height="600" height="auto" src="https://user-images.githubusercontent.com/109174478/270803220-1396dbe9-0152-476b-b254-4be290c687fc.jpg">
</p>

## SET Nginx
```
rm /etc/nginx/sites-available/default
nano /etc/nginx/sites-available/default
```
Didalam file kalian isi dengan kalimat dibawah dan ganti semua kata `domainlu` dengan domain kalian
```
# Force redirects from HTTP to HTTPS
server {
    listen 80;
    listen [::]:80;
    server_name domainlu *.domainlu;

    location / {
        return 301 https://$host$request_uri;
    }
}

# Forward traffic to your node and provide SSL certificates
server {
    listen 443 ssl;
    listen [::]:443 ssl;
    server_name domainlu *.domainlu;

    ssl_certificate /etc/letsencrypt/live/domainmu.zzz/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/domainmu.zzz/privkey.pem;

    location / {
        proxy_pass http://localhost:3000;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_http_version 1.1;
    }
}
```
Kemudian simpan `CTRL+XY` lalu `ENter`

## Restart Nginx dan Check
```
sudo service nginx restart
sudo nginx -t
```
