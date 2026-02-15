#!/bin/bash

# Function to print hostname
print_hostname() {
    echo -e "Hostname: $(hostname)"
}

# Function to print kernel version
print_kernel_version() {
    echo -e "Kernel Version: $(uname -r)"
}

# Function to print OS info
print_os_info() {
    if [ -f /etc/os-release ]; then
        . /etc/os-release
        echo -e "OS: $NAME $VERSION"
    else
        echo -e "OS: Unknown (Cannot read /etc/os-release)"
    fi
}

# Function to print uptime
print_uptime() {
    echo -e "Uptime: $(uptime -p)"
}

# Main script execution
echo "System Information:"
print_hostname
print_kernel_version
print_os_info
print_uptime