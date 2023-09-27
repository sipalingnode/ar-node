echo -e "\033[0;35m"
echo  " ========================================================";
echo  "        _ _ _        _ _ _ _ _       _ _ _ _ _                           ";
echo  "      /  /\  \      |  _ _ _ _|    /    _ _ _ |                          ";
echo  "     /  /  \  \     |  |_ _ _ _   |   /                                  ";
echo  "    /  /_ _ \  \    |_ _ __   |   |  |                                   ";
echo  "   /  /_ _ _ \  \    _ _ __|  |   |   \_ _ _ _                           ";
echo  "  /_ /        \ _\  |_ _ _ _ _|    \ _ _ _ _ _|                          ";
echo -e "\e[35m"
echo "=========================================================="
echo -e '\e[35mNode :\e[35m' AR Node
echo -e '\e[35mTelegram Group :\e[35m' @autosultan_group
echo -e '\e[35mTelegram Channel :\e[35m' @airdropasc
echo "=========================================================="
echo -e "\e[0m"

sleep 2

echo -e "\e[1m\e[32m Install Bahan \e[0m" && sleep 1
sudo apt update
sudo apt upgrade

sudo apt install nginx -y

sudo apt install git -y

sudo apt install docker-compose -y

sudo apt install certbot -y

sudo apt install openssh-server -y
sudo systemctl enable ssh

curl -sSL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update -y

sudo apt-get install yarn -y

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
source ~/.bashrc
nvm install 16.15.1
nvm use 16.15.1

sudo apt install build-essential

sudo apt install sqlite3 -y

sudo ufw allow ssh; sudo ufw allow 80; sudo ufw allow 443; sudo ufw enable

git clone https://github.com/ar-io/ar-io-node.git

echo '=============== DONE ==================='
