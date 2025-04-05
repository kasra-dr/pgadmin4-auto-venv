# pgAdmin4 Auto Setup Script for (Arch) Linux

This script automatically sets up **pgAdmin4** in desktop mode on (Arch) Linux by:

- Rebuilding its Python virtual environment
- Downloading the required `.whl` package from the official PostgreSQL FTP
- Installing dependencies using `pip`

## 🚀 Usage

1. Make the script executable:

```bash
cd path/to/script
chmod +x pgadmin4-setup.sh
```

2. Run the script with sudo
```bash
sudo ./pgadmin4-setup.sh
```

This will recreate the virtual environment in /usr/pgadmin4/venv and install the required packages.

## 🔄 To change pgAdmin Version
The script uses version 9.2 of pgAdmin by default,
to install a different version, visit https://ftp.postgresql.org/pub/pgadmin/pgadmin4/
and copy the url of your desired version (e.g., v9.3) and update the script accordingly.

📦 Requirements:
- Python 3.x
- pip
- Internet connection
- sudo privileges

🖥 Tested On:
- Arch Linux x86_64
- KDE Plasma
