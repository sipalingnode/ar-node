<p style="font-size:14px" align="right">
<a href="https://t.me/autosultan_group" target="_blank">Join our telegram <img src="https://user-images.githubusercontent.com/50621007/183283867-56b4d69f-bc6e-4939-b00a-72aa019d1aea.png" width="30"/></a>
</p>
<p align="center">
  <img height="400" height="auto" src="https://user-images.githubusercontent.com/109174478/209359981-dc19b4bf-854d-4a2a-b803-2547a7fa43f2.jpg">
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

## Build Docker
```
sudo docker-compose up -d --build
```
## Create SSL
**Perhatikan kodenya ada yang harus kalian ganti dibagian email & domain**
```
sudo certbot certonly --manual --preferred-challenges dns --email pakemailu@gmail.com -d domainlu -d '*.domainlu'
```
1. Cek gambar yang di garis bawah, kalian harus copy atau salin tuh kode di notepad
2. **Pada saat kode keluar dan udah di salin kalian harus melakukan step ini secara bersamaan dengan add DNS record, sebelum continue di vps**
<p align="center">
  <img height="400" height="auto" src="https://user-images.githubusercontent.com/109174478/270798362-006848d8-4825-4739-9f6f-6f79e7c0d7d8.jpg">
</p>

3. Login ke akun hostinger kalian
4. Pilih Domain > Manage Domain
5. Klik DNS > Tambahkan DNS
6. Pilih type TXT
7. Name = `_acme-challenge`
8. Dibagian content isi pake kode yang udah di salin tadi
<p align="center">
  <img height="300" height="auto" src="https://user-images.githubusercontent.com/109174478/270802511-608f19ab-d48b-437f-b127-8a970cc074e8.jpg">
</p>

9. Cek dns kalian : https://dnschecker.org/#TXT/
10. Kalo dah aman maka hasilnya akan seperti gambar
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
<p align="center">
  <img height="200" height="auto" src="https://user-images.githubusercontent.com/109174478/270827531-dbb9def8-4a6e-4e81-b20d-527c80b6c0aa.jpg">
</p>

## Check via website
```
https://IPVPS/3lyxgbgEvqNSvJrTX2J7CfRychUD5KClFhhVLyTPNCQ
```
Hasilnya nanti seperti ini kalo dah berhasil
<p align="center">
  <img height="400" height="auto" src="https://user-images.githubusercontent.com/109174478/270837132-032ca9eb-89e8-4060-abbf-221eef788c81.jpg">
</p>

## Request Testnet Token
- Join [Discord](https://discord.gg/pG6uAAqssA)
- Go to #testnet
- Ketik /apply
- Isi survey. Done tinggal nunggu token testnetnya dikirim

**Contoh jika sudah di approved atau token testnet nya dikirim**
<p align="center">
  <img height="300" height="auto" src="https://user-images.githubusercontent.com/109174478/271055308-e77e6b2b-2c6a-4480-9867-0990bd8bdaed.jpg">
</p>

## Jika sudah dapet Token Testnetnya

## Clone Repo Contract
```
cd
git clone https://github.com/ar-io/testnet-contract.git
cd ~/testnet-contract
```
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
source ~/.bashrc
nvm install 16.15.1
nvm use 16.15.1
```
```
curl -sSL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update -y
sudo apt-get install yarn -y
```
```
yarn install
```
```
yarn build
```
## Upload Private key wallet AR (menggunakan file.json)
1. Open ekstensi AR wallet
2. Go to Setting
3. Export Wallet > Pilih via file .json
<p align="center">
  <img height="500" height="auto" src="https://user-images.githubusercontent.com/109174478/270844277-01caa23c-ce09-4582-a94a-5a527ce258f2.jpg">
</p>

4. Ganti nama wallet menjadi `key.json`
5. Upload file ke folder atau direktori `/testnet-contract`
<p align="center">
  <img height="200" height="auto" src="https://user-images.githubusercontent.com/109174478/270844878-fe5324fa-8bf9-43dc-bcf2-05eea99af3da.jpg">
</p>
