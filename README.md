# Homebrew QNAP-Docker

🍺 **Homebrew formula for qnap-docker** - CLI tool for deploying containers to QNAP Container Station

## Installation

```bash
# Add the tap
brew tap scttfrdmn/homebrew-qnap-docker

# Install qnap-docker
brew install qnap-docker
```

## About qnap-docker

**qnap-docker** is a CLI tool that simplifies Docker container deployment to QNAP NAS devices with Container Station. It handles SSH connection management, Docker client setup, and path resolution issues specific to QNAP Container Station.

### Key Features

- 🚀 **One-command deployment** - Deploy containers as easily as `qnap-docker run nginx`
- 🔧 **Dynamic Docker detection** - Automatically finds Container Station across volumes
- 📂 **Multi-volume support** - Smart handling of CACHEDEV, ZFS, USB, external volumes
- 🔐 **SSH key & ssh-agent support** - Works with both SSH key files and ssh-agent
- 📦 **docker-compose support** - Deploy complex multi-container applications

### Quick Start

```bash
# Setup connection to your QNAP NAS
qnap-docker init your-nas.local

# Deploy your first container
qnap-docker run nginx:latest --name web --port 8080:80

# Deploy from docker-compose.yml
qnap-docker deploy ./docker-compose.yml
```

## Documentation

- 📖 [Full Documentation](https://github.com/scttfrdmn/qnap-docker)
- 🐛 [Issue Tracker](https://github.com/scttfrdmn/qnap-docker/issues)
- 💬 [Discussions](https://github.com/scttfrdmn/qnap-docker/discussions)

## Related Projects

- [syno-docker](https://github.com/scttfrdmn/syno-docker) - Sister project for Synology NAS systems
- [homebrew-syno-docker](https://github.com/scttfrdmn/homebrew-syno-docker) - Homebrew tap for syno-docker

---

**Made with ❤️ for the QNAP community**