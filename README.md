# layer-kbd

![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)
[![keyd](https://img.shields.io/badge/keyd-v2.4+-blue?style=for-the-badge)](https://github.com/rvaiya/keyd)

> A minimal and efficient keyboard remapping configuration for Linux using keyd, designed for programmer ergonomics with smart key overloading and AltGr layer for symbols.

## ✨ Features

### 🎯 Core Features
- Smart key overloading for common modifiers
- AltGr layer for quick number and symbol access
- CapsLock to Escape remapping for Vim users
- Minimal configuration with maximum efficiency
- Customizable modifier tap delay

### ⌨️ Key Mappings

#### Base Layer Overloads
```
j → Shift (when held) / j (when tapped)
f → Shift (when held) / f (when tapped)
d → Control (when held) / d (when tapped)
k → Control (when held) / k (when tapped)
l → Meta/Super (when held) / l (when tapped)
s → Meta/Super (when held) / s (when tapped)
CapsLock → Escape
```

#### AltGr Layer (Right Alt)
```
Numbers Row:
q → 1    w → 2    e → 3    r → 4    t → 5
y → 6    u → 7    i → 8    o → 9    p → 0

Symbol Row:
a → !    s → *    d → ^    f → $    
c → +    v → =    z → _    x → -
j → )    n → (    k → }    m → {    l → \
```

## 🛠️ Prerequisites

- Linux system
- keyd v2.4 or higher
- Root access for installation
- systemd (for service management)

## 📦 Installation

1. Install keyd first:
```bash
# Clone keyd repository
git clone https://github.com/rvaiya/keyd
cd keyd

# Build and install
make && sudo make install

# Start keyd service
sudo systemctl enable keyd
sudo systemctl start keyd
```

2. Install this configuration:
```bash
# Clone this repository
git clone https://github.com/yourusername/layer-kbd
cd layer-kbd

# Copy configuration
sudo cp default.conf /etc/keyd/default.conf

# Reload keyd
sudo keyd reload
```

## ⚙️ Configuration

The configuration is split into three main sections:

### 1. IDs Section
```
[ids]
*  # Applies to all keyboards
```

### 2. Main Layer
```
[main]
# Modifier overloading
j = overload(shift, j)
f = overload(shift, f)
d = overload(control, d)
k = overload(control, k)
l = overload(meta, l)
s = overload(meta, s)

# Vim-friendly mapping
capslock = esc
```

### 3. AltGr Layer
```
[altgr]
# Numbers
q = 1
w = 2
...

# Symbols
a = !
s = *
...
```

## 🚀 Usage

### Basic Operations

1. **Modifier Keys**
   - Hold 'j' or 'f' for Shift
   - Hold 'd' or 'k' for Control
   - Hold 'l' or 's' for Meta/Super
   - Tap these keys for normal letter input

2. **Number Input**
   - Hold Right Alt + top row letters for numbers
   - Example: RAlt + 'q' → 1, RAlt + 'w' → 2

3. **Symbol Input**
   - Hold Right Alt + letters for symbols
   - Example: RAlt + 'a' → !, RAlt + 's' → *

## 🔧 Customization

### Modifying Tap Delay
```bash
# Edit the configuration
sudo nano /etc/keyd/default.conf

# Adjust the modtap_delay value (in milliseconds)
[settings]
modtap_delay = 400
```

### Adding New Mappings
1. Edit the configuration:
```bash
sudo nano /etc/keyd/default.conf
```
2. Add your mappings in the appropriate section
3. Reload keyd:
```bash
sudo keyd reload
```