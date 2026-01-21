# VAL Essentials

A simple toolset for managing Valorant game files, specifically designed to update blood paks and remove regional branding.

## Features

- **Blood Paks Update**: Automatically downloads and installs mature content paks for enhanced blood effects
- **VNGLogo Removal**: Safely removes VNG (Vietnam) regional branding files
- **Automated Installation**: One-click setup with proper file management
- **Clean Uninstallation**: Automatic cleanup of temporary files

## Installation

1. Download `install_paks.bat`
2. Run the batch file as Administrator
3. Follow the on-screen prompts

## Usage

The script will automatically:
- Download required files from the repository
- Remove existing VNGLogo files
- Install new blood paks
- Clean up temporary files

## Files

- `install_paks.bat` - Main installation script
- `paks/` - Contains game modification files
  - `MatureData-WindowsClient.pak` - Blood effects data
  - `MatureData-WindowsClient.sig` - Digital signature
  - `MatureData-WindowsClient.ucas` - UE4 container file
  - `MatureData-WindowsClient.utoc` - UE4 table of contents

## Requirements

- Windows operating system
- Valorant installed
- Administrator privileges
- Internet connection for downloads

## Safety

- Creates backups before making changes
- Verifies file existence before deletion
- Uses temporary folders for safe downloads
- Automatic cleanup of temporary files

## Disclaimer

This tool modifies game files. Use at your own risk. The authors are not responsible for any issues that may arise from using this software.

## License

This project is open source and available under the MIT License.
