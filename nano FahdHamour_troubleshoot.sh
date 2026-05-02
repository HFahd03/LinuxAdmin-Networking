#!/bin/bash


echo "========================================"
echo " NETWORK TROUBLESHOOTING TOOL"
echo "========================================"

echo ""
echo "Select your server type:"
echo "1. Ubuntu"
echo "2. CentOS"
echo "3. Exit"

read choice

if [ $choice -eq 1 ]; then
    echo ""
    echo "=== Ubuntu Troubleshooting ==="

    echo "- Check IP address:"
    echo "  Command: ip a"

    echo "- Check routing:"
    echo "  Command: ip route"

    echo "- Check DNS:"
    echo "  Command: cat /etc/resolv.conf"

    echo "- Restart network (Netplan):"
    echo "  Command: sudo netplan apply"

    echo "- Test connectivity:"
    echo "  Command: ping -c 3 google.com"

    echo "- Trace network path:"
    echo "  Command: tracepath google.com"

    echo "- To set static IP:"
    echo "  Edit file: /etc/netplan/*.yaml"
    echo "  Then apply: sudo netplan apply"

elif [ $choice -eq 2 ]; then
    echo ""
    echo "=== CentOS Troubleshooting ==="

    echo "- Check IP address:"
    echo "  Command: ip a"

    echo "- Check routing:"
    echo "  Command: ip route"

    echo "- Check DNS:"
    echo "  Command: cat /etc/resolv.conf"

    echo "- Check NetworkManager status:"
    echo "  Command: nmcli device show"

    echo "- Restart network:"
    echo "  Command: sudo systemctl restart NetworkManager"

    echo "- Test connectivity:"
    echo "  Command: ping -c 3 google.com"

    echo "- Trace network path:"
    echo "  Command: tracepath google.com"

    echo "- To set static IP:"
    echo "  Edit files in: /etc/NetworkManager/system-connections/"

elif [ $choice -eq 3 ]; then
    echo "Exiting..."

else
    echo "Invalid choice. Please run the script again."
fi
