#!/bin/bash

# Function to enable or disable proxy
set_proxy() {
    networksetup -setwebproxy "$interface" "$proxy_server" "$proxy_port"
    networksetup -setsecurewebproxy "$interface" "$proxy_server" "$proxy_port"
    echo "Webproxy set on $interface with $proxy_server:$proxy_port"
}

# Function to disable proxy
disable_proxy() {
    networksetup -setwebproxystate "$interface" off
    networksetup -setsecurewebproxystate "$interface" off
    echo "Webproxy disabled on $interface"
}

# Set your interface name
interface="Wi-Fi"

# Set your proxy settings
proxy_server="your_proxy_server"
proxy_port=1080

while [[ $# -gt 0 ]]; do
    case $1 in
        -i|--interface)
            interface=$2
            shift 2
            ;;
        -s|--proxy-server)
            proxy_server=$2
            shift 2
            ;;
        -p|--proxy-port)
            proxy_port=$2
            shift 2
            ;;
        -c|--clear)
            disable_proxy
            exit 0
            ;;
        *)
            echo "Unknown option: $1"
            exit 1
            ;;
    esac
done

set_proxy

# get Wi-Fi name
# Function to get the current Wi-Fi network name
# get_current_network() {
#     wifi_interface=$(networksetup -listallhardwareports | awk '/Wi-Fi|AirPort/ {getline; print $NF}')
#     networksetup -getairportnetwork "$wifi_interface" | awk '/Current Wi-Fi Network/{print $NF}'
# }
