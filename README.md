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
