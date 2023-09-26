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

echo -e "\e[1m\e[32m1. Install Bahan \e[0m" && sleep 1
sudo apt update -y && sudo apt upgrade -y && sudo apt install -y curl openssh-server docker-compose git certbot nginx sqlite3 build-essential && sudo systemctl enable ssh && curl -sSL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list && sudo apt-get update -y && sudo apt-get install -y yarn && curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash && source ~/.bashrc && sudo ufw allow 22 80 443 && sudo ufw enable

echo -e "\e[1m\e[32m5. Clone Repo \e[0m" && sleep 1
git clone https://github.com/ar-io/ar-io-node.git

echo '=============== DONE ==================='
