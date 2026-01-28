.PHONY: run dev install clean help

# Default target
.DEFAULT_GOAL := help

# Run the development server
run: dev

# Start Mintlify development server
dev:
	@echo "🚀 Starting Mintlify development server..."
	mintlify dev

# Install Mintlify CLI
install:
	@echo "📦 Installing Mintlify CLI..."
	npm install -g mintlify@4.2.240

# Clean any cache or temporary files
clean:
	@echo "🧹 Cleaning cache..."
	@rm -rf .mintlify
	@echo "✨ Cache cleaned!"

# Help command
help:
	@echo "📚 Upsonic Documentation - Available Commands:"
	@echo ""
	@echo "  make run        - Start the local documentation server"
	@echo "  make dev        - Start the local documentation server (alias for run)"
	@echo "  make install    - Install Mintlify CLI globally"
	@echo "  make clean      - Clean Mintlify cache"
	@echo "  make help       - Show this help message"
	@echo ""
	@echo "💡 Quick start: make run"

