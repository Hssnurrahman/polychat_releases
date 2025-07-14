# 🎯 QuivoraChat CLI

A powerful terminal-based AI chatbot powered by Mistral AI, featuring advanced file attachments, search functionality, and conversation management.

![Go](https://img.shields.io/badge/Go-1.23+-blue.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)
![Version](https://img.shields.io/badge/version-0.1.0--alpha.1-orange.svg)

## ✨ Features

- 🎨 **Dark/Light Themes** - Beautiful terminal UI with theme switching
- 🔍 **Advanced Search** - Search through all conversations with highlighting
- 💬 **Chat Management** - Save, load, delete, and organize conversations
- 📎 **File Attachments** - Drag & drop files, smart path resolution, image processing
- 🎨 **Markdown Rendering** - Rich text formatting with syntax highlighting
- 💾 **Smart Storage** - Cross-platform config and chat storage
- 📋 **Clipboard Integration** - Copy responses to clipboard
- 🔑 **API Key Management** - Secure encrypted API key storage
- 🆓 **Unlimited Usage** - No credit restrictions with built-in API key
- ⚡ **Tab Completion** - Command completion and history
- 🎯 **Context Preservation** - Multi-turn conversations with full context

## 🚀 Quick Start

### Installation

#### Option 1: Download Binary
1. Go to [QuivoraChat Releases](https://github.com/hssnurrahman/quivorachat_releases)
2. Download the binary for your platform
3. Make it executable: `chmod +x quivorachat`
4. Run: `./quivorachat`

#### Option 2: Build from Source
```bash
git clone https://github.com/hssnurrahman/quivorachat_cli.git
cd quivorachat_cli
go build -o quivorachat .
./quivorachat
```

### First Run

1. **Start QuivoraChat**: `./quivorachat`
2. **Start chatting**: Type your message and press Enter (unlimited usage)
3. **Explore commands**: Type `help` to see all available commands

## 🎯 Usage

### Basic Commands
```bash
help                    # Show all commands
search <term>          # Search all conversations
search here <term>     # Search current conversation
theme dark             # Switch to dark theme
theme light            # Switch to light theme
save                   # Save current conversation
chats                  # List all saved chats
load <chat_id>         # Load a conversation
delete <chat_id>       # Delete a conversation
copy                   # Copy last AI response to clipboard
config                 # Show current configuration
clear                  # Clear current conversation
quit                   # Exit application
```

### File Attachments
```bash
# Drag and drop files into the terminal
# Or specify file paths:
@/path/to/file.txt                    # Attach specific file
@*.py                                 # Attach all Python files in current directory
@**/*.json                            # Attach all JSON files recursively
```

**Supported file types:**
- **Images**: JPEG, PNG, GIF, WebP (10MB limit, auto-compressed)
- **Text**: TXT, MD, CSV, JSON, XML (20MB limit)
- **Documents**: PDF (20MB limit)

### Search
```bash
search python              # Search for "python" in all conversations
search here error          # Search for "error" in current conversation
search "exact phrase"      # Search for exact phrases
```

### API Key Management
```bash
apikey                     # Manage API keys (show help, update, clear)
```

**API Key Options:**
- Set environment variable: `export POLYCHAT_API_KEY="your-mistral-api-key"`
- Use interactive prompt to enter and securely store your key
- Use built-in API key for unlimited usage (default)

### Configuration

QuivoraChat stores configuration in:
- **Linux**: `~/.config/quivorachat/config.json`
- **macOS**: `~/Library/Application Support/QuivoraChat/config.json`
- **Windows**: `%APPDATA%/QuivoraChat/config.json`

Example config:
```json
{
  "model": "pixtral-12b-2409",
  "theme": "dark",
  "max_width": 80,
  "timestamps": true,
  "word_count": true
}
```

## 🎨 Screenshots

### Dark Theme with File Attachments
```
╔════════════════════════════════════════╗
║              QuivoraChat               ║
║        AI Chatbot powered by Mistral   ║
║            Theme: dark                 ║
╚════════════════════════════════════════╝

┌─ You: @screenshot.png Explain this image

📎 Attached: screenshot.png (245KB, compressed to 123KB)

└─ 🤖 Assistant:
I can see this is a screenshot showing...

Copy options: 'copy' (full response only)

🔍 Found 3 result(s) for "python":
────────────────────────────────────────
1. 👤 user (2024-06-12 08:15)
   in: Python Tutorial Chat
   How to create a **python** function...
   Chat ID: 2024-06-12_08-15-23, Message: 1
```

## 🔧 Advanced Features

### Smart File Search
```bash
# Find files by pattern
@config*                 # All files starting with "config"
@**/*.go                 # All Go files in subdirectories
@src/**/*test*           # All test files in src directory
```

### Conversation Management
```bash
save "Meeting Notes"     # Save with custom title
load tab_completion      # Tab completion for chat IDs
delete old_chat_id       # Remove unwanted conversations
```

### Cross-Platform Clipboard
Copy complete AI responses to system clipboard on:
- Windows (via `clip`)
- macOS (via `pbcopy`)
- Linux (via `xclip` or `xsel`)

### Unlimited Usage
- No credit restrictions or message limits
- Built-in API key provides unlimited access
- Use your own Mistral API key for direct access

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [Mistral AI](https://mistral.ai/) for the powerful language models
- [Air](https://github.com/air-verse/air) for hot reloading during development
- The Go community for excellent tooling and libraries

## 📞 Support

- 🐛 **Bug Reports**: [GitHub Issues](https://github.com/hssnurrahman/quivorachat_cli/issues)
- 📧 **Email**: hello@quivorachat.com
- 💬 **Downloads**: [QuivoraChat Releases](https://github.com/hssnurrahman/quivorachat_releases)

---

**⭐ Star this repository if you find QuivoraChat useful!**
