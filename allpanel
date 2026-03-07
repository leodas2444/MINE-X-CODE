#!/bin/bash

# ==============================================================================
#                               COLORS
# ==============================================================================
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
NC='\033[0m'

# ==============================================================================
#                               PAUSE FUNCTION
# ==============================================================================
pause() {
echo ""
read -n 1 -s -r -p "Press any key to continue..."
echo ""
}

# ==============================================================================
#                               BANNER
# ==============================================================================
banner() {
clear
echo -e "${CYAN}"
echo "███╗   ███╗██╗███╗   ██╗███████╗    ██╗  ██╗"
echo "████╗ ████║██║████╗  ██║██╔════╝    ╚██╗██╔╝"
echo "██╔████╔██║██║██╔██╗ ██║█████╗       ╚███╔╝ "
echo "██║╚██╔╝██║██║██║╚██╗██║██╔══╝       ██╔██╗ "
echo "██║ ╚═╝ ██║██║██║ ╚████║███████╗    ██╔╝ ██╗"
echo "╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚══════╝    ╚═╝  ╚═╝"
echo -e "${NC}"

echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${WHITE}             MINE X PANEL MANAGER${NC}"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
}

# ==============================================================================
#                               MENU
# ==============================================================================
panel_menu(){

while true; do

banner

echo -e "${CYAN} ┌────────────────────────────────────────────────┐${NC}"
echo -e "${CYAN} │${NC}              ${YELLOW}SELECT AN OPTION${NC}                  ${CYAN}│${NC}"
echo -e "${CYAN} ├──────────────────────┬─────────────────────────┤${NC}"

echo -e "${CYAN} │${NC} ${GREEN}1)${NC} Pterodactyl       ${CYAN}│${NC} ${GREEN} 6)${NC} Payment Gateway     ${CYAN}│${NC}"
echo -e "${CYAN} │${NC} ${GREEN}2)${NC} Jexactyl          ${CYAN}│${NC} ${GREEN} 7)${NC} CtrlPanel           ${CYAN}│${NC}"
echo -e "${CYAN} │${NC} ${GREEN}3)${NC} Jexpanel          ${CYAN}│${NC} ${GREEN} 8)${NC} Reviactyl           ${CYAN}│${NC}"
echo -e "${CYAN} │${NC} ${GREEN}4)${NC} Mythicaldash      ${CYAN}│${NC} ${GREEN} 9)${NC} Tools               ${CYAN}│${NC}"
echo -e "${CYAN} │${NC} ${GREEN}5)${NC} Mythicaldash v3   ${CYAN}│${NC} ${RED}10) Exit               ${CYAN}│${NC}"

echo -e "${CYAN} └──────────────────────┴─────────────────────────┘${NC}"
echo ""

echo -e "${WHITE}Enter your choice [1-10]:${NC}"
read -p "➜ " p

case $p in

1)
bash <(curl -s https://raw.githubusercontent.com/leodas2444/MINEX/refs/heads/main/ptero/panel/pterodactyl/run.sh)
pause
;;

2)
bash <(curl -fsSL https://raw.githubusercontent.com/leodas2444/MINEX/refs/heads/main/ptero/panel/Jexactyl/run.sh)
pause
;;

3)
bash <(curl -s https://raw.githubusercontent.com/leodas2444/MINEX/refs/heads/main/srv/Uninstall/unJexactyl.sh)
pause
;;

4)
bash <(curl -s https://raw.githubusercontent.com/leodas2444/MINEX/refs/heads/main/srv/Uninstall/undash-3.sh)
pause
;;

5)
bash <(curl -s https://raw.githubusercontent.com/leodas2444/MINEX/refs/heads/main/srv/Uninstall/dash-v4.sh)
pause
;;

6)
bash <(curl -s https://raw.githubusercontent.com/leodas2444/MINEX/refs/heads/main/srv/Uninstall/unPaymenter.sh)
pause
;;

7)
bash <(curl -s https://raw.githubusercontent.com/nobita54/-150/refs/heads/main/Uninstall/unCtrlPanel.sh)
pause
;;

8)
bash <(curl -s https://raw.githubusercontent.com/leodas2444/MINEX/refs/heads/main/srv/Uninstall/unReviactyl.sh)
pause
;;

9)
bash <(curl -s https://raw.githubusercontent.com/leodas2444/MINEX/refs/heads/main/tools/t-panel.sh)
pause
;;

10)
echo -e "${RED}Exiting MINE X Manager...${NC}"
exit
;;

*)
echo -e "${RED}Invalid option${NC}"
sleep 1
;;

esac

done
}

panel_menu
