## Hapus Data Node
```
cd ~/ar-io-node
sudo docker compose down -v
```
```
sudo docker image prune -a
```
```
sudo docker builder prune
```
## Git Pull
```
git pull
```
## Create Wallet dan Import Private Key .json
- buat wallet baru arweave
- isi saldo sekitar 0,01 $AR
- Export private key .json
- Ganti nama private key menjadi `address.json` contoh `7sbISos2U0wFScq8MXp2Lvs8TfZ8zKbYyRMhNdUuYKA.json`
- Login VPS lagi
- Import private key ke folder `/ar-io-node/wallets`
- Done

## Edit File
```
nano .env
```
Kemudian tambahkan teks dibawah. your wallet address ganti dengan address arweave kalian
```
RUN_OBSERVER=true
OBSERVER_WALLET=YourWalletAddress
```
## Build Docker
```
docker compose up -d --build
```
