# install nordvpn
COMMAND=nordvpn
# if ! command -v $COMMAND &> /dev/null; then
#     wget -O ~/nordvpn.deb https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/nordvpn-release_1.0.0_all.deb
#     sudo gdebi ~/nordvpn.deb
#     sudo apt update
#     sudo apt install -y nordvpn
#     # nordvpn login
#     # nordvpn connect
# else
#     echo "$COMMAND found"
# fi
if ! command -v $COMMAND &> /dev/null; then
    sh <(curl -sSf https://downloads.nordcdn.com/apps/linux/install.sh)
    # nordvpn set obfuscate on
    nordvpn set killswitch on
    nordvpn set dns 1.1.1.1 8.8.8.8 8.8.4.4
    # nordvpn set autoconnect on Obfuscated_Servers
else
    echo "$COMMAND found"
fi