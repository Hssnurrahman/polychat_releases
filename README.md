# 🎯 PolyChat CLI

A smart AI chatbot for your terminal. Chat with AI, save conversations, search your history, and copy responses - all from the command line.

![Version](https://img.shields.io/badge/version-0.1.0--alpha.2-orange.svg)
![Go](https://img.shields.io/badge/Go-1.23+-blue.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)

## 🚀 Get Started in 2 Minutes

### 1. Install PolyChat

**Option A: Easy Install (Recommended)**
```bash
# Download and run install script
wget https://github.com/hssnurrahman/polychat_releases/raw/main/install.sh
chmod +x install.sh
./install.sh
```

**Option B: Manual Download**
```bash
# Visit: https://github.com/hssnurrahman/polychat_releases
# Download the binary for your platform and make it executable
chmod +x polychat
```

### 2. Start Chatting
```bash
./polychat        # Start PolyChat
```

That's it! PolyChat comes with **20 free credits** (80 messages) to get you started.

## 💬 How to Use PolyChat

### Basic Chatting
Just type your message and press Enter:
```
┌─ You: Hello, can you help me write a Python function?

└─ 🤖 Assistant:
I'd be happy to help you write a Python function! Here's a simple example:

```python
def greet(name):
    return f"Hello, {name}!"
```

Copy options: 'copy' (full), 'copy lines' (select), 'copy code' (code blocks)
```

### Essential Commands
- `help` - Show all available commands
- `clear` - Start a new conversation
- `quit` or `exit` - Close PolyChat

### Save Your Conversations
```bash
save                # Save current chat
chats               # See all your saved chats
load chat_2024-01-15_10-30-45    # Load a specific chat
```

### Search Your Chat History
```bash
search python       # Find all mentions of "python"
search here bug     # Search only current conversation
```

### Copy AI Responses
```bash
copy                # Copy the full response
copy code           # Copy just the code blocks
copy lines          # Choose specific lines to copy
```

### Customize Your Experience
```bash
theme dark          # Switch to dark theme
theme light         # Switch to light theme
config              # See your current settings
```

## 🎨 What Makes PolyChat Special

### 🔍 Smart Search
- Search across all your conversations
- Find specific topics or code snippets
- Search by who said what (you vs AI)

### 📋 Intelligent Copy
- Copy entire responses with one command
- Extract just the code blocks
- Select specific lines interactively

### 💾 Conversation Management
- Auto-saves your chats as you go
- Load old conversations anytime
- Delete chats you don't need

### 🎨 Beautiful Interface
- Clean, readable terminal output
- Dark and light themes
- Syntax highlighting for code
- Proper markdown formatting

## 💰 Credits & API Keys

### Using Free Credits
PolyChat starts with 20 free credits (each message costs 0.25 credits = 80 messages).

### Getting More Credits
```bash
credits             # Buy more credits ($5-$50 packages)
```

### Using Your Own API Key
```bash
apikey              # Set up your Mistral API key
```
Or set environment variable:
```bash
export POLYCHAT_API_KEY="your-api-key-here"
```

## 📁 Where PolyChat Stores Your Data

### Your Chats and Settings
- **Linux**: `~/.config/polychat/`
- **macOS**: `~/Library/Application Support/PolyChat/`
- **Windows**: `%APPDATA%\Roaming\PolyChat\`

Your conversations are saved as simple JSON files - easy to backup!

## 🔧 Advanced Usage

### Search Like a Pro
```bash
search role:user python         # Find where YOU mentioned Python
search role:assistant error     # Find AI responses about errors
search "exact phrase"           # Search for exact text
```

### Power User Commands
```bash
stats               # See conversation statistics
delete chat_id      # Delete unwanted conversations
version             # Check your PolyChat version
```

## 🆘 Getting Help

### In PolyChat
- Type `help` for command list
- Type `config` to see current settings
- Type `stats` for usage information

### Online Resources
- 📦 **Download**: [PolyChat Releases](https://github.com/hssnurrahman/polychat_releases)
- 📧 **Contact**: hssnurrahman@gmail.com

## 🤝 Why Choose PolyChat?

- **✅ Works Offline**: No internet required after setup
- **✅ Private**: Your conversations stay on your computer
- **✅ Fast**: Instant search through thousands of messages
- **✅ Convenient**: Copy code and responses with one command
- **✅ Organized**: Never lose important conversations
- **✅ Secure**: Encrypted API key storage

## 📝 License

MIT License - use it however you want!

---

*PolyChat v0.1.0-alpha.2 - Made with ❤️ for developers who live in the terminal*
