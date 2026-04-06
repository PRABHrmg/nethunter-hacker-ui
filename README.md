# 💀 NetHunter Hacker UI

🔥 Advanced startup animation for Termux + Kali NetHunter

---

## 🚀 Features

* 🌐 IP Tracking Animation (Random IP + Geo Info)
* 🧱 Firewall Bypass Effect
* 📍 Fake Location (Country, City, ISP, Lat/Long)
* 📊 Port Scan Animation (0–100%)
* 🔐 Login System (Custom Username & Password)
* 🐉 Dragon Logo (Auto adjust based on screen)
* ⚙️ System Info Display

---

## 📦 Installation

### 1. Update Termux

```
pkg update && pkg upgrade -y
```

### 2. Install Git

```
pkg install git -y
```

### 3. Clone Repository

```
git clone https://github.com/PRABHrmng/nethunter-hacker-ui
cd nethunter-hacker-ui
```

### 4. Run Installer

```
bash install.sh
```

---

## ▶️ Usage

Just open Termux / NetHunter — animation will start automatically.

---

## 🔐 First-Time Setup

* You will be asked to:

  * Set username
  * Set password

👉 These will be saved securely in your home directory.

---

## 📁 Project Structure

```
nethunter-hacker-ui/
│── main.sh
│── iptrace.sh
│── login.sh
│── system.sh
│── install.sh
│── assets/
│     ├── dragon.txt
│     └── small_logo.txt
│── README.md
```

---

## ⚙️ Customize

### Change Logo

Edit:

```
assets/dragon.txt
```

### Small Screen Logo

Edit:

```
assets/small_logo.txt
```

---

## 🧹 Uninstall

Remove from `.bashrc`:

```
nano ~/.bashrc
```

Delete this line:

```
bash ~/nethunter-hacker-ui/main.sh
```

Then remove repo:

```
rm -rf ~/nethunter-hacker-ui
```

---

## ⚠️ Disclaimer

This project is for **educational and visual purposes only**.
No real hacking or tracking is performed.

---

## ❤️ Author

Made by **PRABHrmg**

---

## ⭐ Support

If you like this project:

* ⭐ Star the repo
* 🍴 Fork it
* 🚀 Share with friends
