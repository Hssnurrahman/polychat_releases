## [0.1.0-alpha.1] - 2025-06-25

### New Features

- Complete CLI chatbot implementation with interactive TUI interface
- Advanced conversation management with save, load, and auto-save functionality  
- Comprehensive search system with role filtering and keyword matching
- Multi-format file attachment support for images and documents
- Intelligent copy utilities for responses, code blocks, and specific lines
- Credit-based API usage tracking with low balance warnings
- Dual theme support with customizable light and dark modes
- Flexible YAML configuration management with environment variable support

### Fixes

- Fixed configuration file loading and path resolution issues
- Resolved memory management for large conversation histories  
- Fixed proper error handling for API failures and network issues
- Corrected chat persistence and loading mechanisms
- Other stability improvements and bug fixes

### Breaking Changes

- Initial alpha release - API and configuration structure may change
- Credit system implementation requires API key configuration
- Configuration file location changed to `~/polychat/.polychat.yaml`
