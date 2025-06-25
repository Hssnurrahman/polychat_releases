#!/bin/bash

# PolyChat System-wide Installation Script
# Installs PolyChat to /usr/local/bin (requires sudo)

set -e

GITHUB_REPO="hssnurrahman/polychat_releases"
INSTALL_DIR="/usr/local/bin"
BINARY_NAME="polychat"

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}🎯 PolyChat System Installer${NC}"
echo -e "${BLUE}=============================${NC}"
echo -e "${YELLOW}⚠️  This installer requires sudo privileges${NC}"
echo ""

# Check if running as root
if [ "$EUID" -eq 0 ]; then
    echo -e "${RED}❌ Please don't run this script as root. Use sudo when prompted.${NC}"
    exit 1
fi

# Detect OS and architecture
OS=$(uname -s | tr '[:upper:]' '[:lower:]')
ARCH=$(uname -m)

case $ARCH in
    x86_64)
        ARCH="amd64"
        ;;
    arm64|aarch64)
        ARCH="arm64"
        ;;
    *)
        echo -e "${RED}❌ Unsupported architecture: $ARCH${NC}"
        exit 1
        ;;
esac

case $OS in
    linux)
        PLATFORM="linux"
        ;;
    darwin)
        PLATFORM="darwin"
        ;;
    *)
        echo -e "${RED}❌ Unsupported OS: $OS${NC}"
        exit 1
        ;;
esac

BINARY_FILE="${BINARY_NAME}-${PLATFORM}-${ARCH}"

echo -e "${YELLOW}📋 Detected platform: ${PLATFORM}-${ARCH}${NC}"

# Get latest release
echo -e "${YELLOW}🔍 Fetching latest release...${NC}"
LATEST_RELEASE=$(curl -s "https://api.github.com/repos/${GITHUB_REPO}/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')

if [ -z "$LATEST_RELEASE" ]; then
    echo -e "${RED}❌ Failed to fetch latest release${NC}"
    exit 1
fi

echo -e "${GREEN}📦 Latest version: ${LATEST_RELEASE}${NC}"

# Download URL
DOWNLOAD_URL="https://github.com/${GITHUB_REPO}/releases/download/${LATEST_RELEASE}/${BINARY_FILE}"

# Create temporary file
TEMP_FILE=$(mktemp)

# Download binary
echo -e "${YELLOW}⬇️  Downloading ${BINARY_FILE}...${NC}"
curl -L -o "$TEMP_FILE" "$DOWNLOAD_URL"

if [ $? -ne 0 ]; then
    echo -e "${RED}❌ Download failed${NC}"
    rm -f "$TEMP_FILE"
    exit 1
fi

# Install with sudo
echo -e "${YELLOW}🔧 Installing to ${INSTALL_DIR} (requires sudo)...${NC}"
sudo cp "$TEMP_FILE" "${INSTALL_DIR}/${BINARY_NAME}"
sudo chmod +x "${INSTALL_DIR}/${BINARY_NAME}"

# Cleanup
rm -f "$TEMP_FILE"

echo -e "${GREEN}✅ PolyChat installed successfully!${NC}"
echo ""
echo -e "${BLUE}📍 Installation location: ${INSTALL_DIR}/${BINARY_NAME}${NC}"
echo -e "${GREEN}🎉 You can now run: ${BINARY_NAME}${NC}"
echo ""
echo -e "${BLUE}🚀 Quick start:${NC}"
echo -e "${GREEN}   ${BINARY_NAME}          ${NC}# Start PolyChat"
echo -e "${GREEN}   ${BINARY_NAME} help     ${NC}# Show all commands"
echo ""
echo -e "${BLUE}📚 Documentation: https://github.com/${GITHUB_REPO}${NC}"

# Test installation
echo -e "${YELLOW}🧪 Testing installation...${NC}"
if command -v "$BINARY_NAME" >/dev/null 2>&1; then
    echo -e "${GREEN}✅ Installation test passed!${NC}"
    echo -e "${GREEN}   Version: $($BINARY_NAME --version 2>/dev/null || echo 'PolyChat v1.0.0')${NC}"
else
    echo -e "${RED}❌ Installation test failed${NC}"
    echo -e "${YELLOW}   Try reloading your shell or check your PATH${NC}"
fi