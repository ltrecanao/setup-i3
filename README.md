# setup-i3

Setup minimalista para i3 con tema **Aura** pensado para **Debian 13** (Trixie) — polybar, alacritty, picom, rofi, dunst y ranger.

![i3](https://img.shields.io/badge/WM-i3-blue) ![Theme](https://img.shields.io/badge/theme-Aura-7c3aed) ![Terminal](https://img.shields.io/badge/terminal-alacritty-yellow) ![Bar](https://img.shields.io/badge/bar-polybar-orange)

---

## Requisitos

- Debian 13 (probado en instalación mínima, sin entorno de escritorio).
- Acceso a `sudo` para instalar paquetes.

## Estructura

```
setup-i3/
├── README.md
├── install-i3.sh          # Instala paquetes del sistema
├── install-dotfiles.sh    # Copia dotfiles a ~/.config
├── docs/
│   └── i3-aura-keybindings.png
└── dotfiles/
    ├── i3/config
    ├── polybar/
    │   ├── config.ini
    │   └── launch.sh
    ├── alacritty/alacritty.toml
    ├── picom/picom.conf
    ├── dunst/dunstrc
    ├── rofi/config.rasi
    ├── ranger/rc.conf
    └── .xprofile
```

---

## Instalación

### 1. Clonar el repo

```bash
git clone https://github.com/ltrecanao/setup-i3.git
cd setup-i3
```

### 2. Instalar paquetes

```bash
./install-i3.sh
```

Instala: i3, polybar, alacritty, picom, rofi, dunst, feh, ranger, Fira Code, Font Awesome y más.

### 3. Instalar dotfiles

```bash
./install-dotfiles.sh
```

Copia todos los archivos a `~/.config/` y crea `~/.xinitrc`.

### 4. Wallpaper

Colocá tu wallpaper en:

```
/home/TU_USUARIO/Pictures/wallpaper.png
```

### 5. Iniciar sesión

```bash
startx
```

---

## Atajos de teclado

| Acción | Atajo |
|---|---|
| Terminal | `Alt + Enter` |
| Launcher (rofi) | `Alt + d` |
| Cerrar ventana | `Alt + Shift + q` |
| Mover foco | `Alt + ←/↓/↑/→` |
| Mover ventana | `Alt + Shift + ←/↓/↑/→` |
| Cambiar workspace | `Alt + 1-0` |
| Mover a workspace | `Alt + Shift + 1-0` |
| Recargar config | `Alt + Shift + C` |
| Reiniciar i3 | `Alt + Shift + R` |
| Salir de i3 | `Alt + Shift + E` |
| Resize mode | `Alt + R` |
| Fullscreen | `Alt + f` |
| Floating toggle | `Alt + Space` |
| Screenshot (selección) | `Print` |
| Screenshot (pantalla) | `Alt + Print` |

---

## Componentes

| Componente | Función |
|---|---|
| **i3** | Window manager con gaps y bordes de 2px |
| **Polybar** | Barra superior con workspaces, título, volumen y hora |
| **Alacritty** | Terminal con transparencia y Fira Code |
| **Picom** | Compositor con sombras suaves y esquinas redondeadas |
| **Rofi** | Launcher de apps |
| **Dunst** | Notificaciones |
| **feh** | Wallpaper |
| **ranger** | File manager en terminal |

---

## Tema Aura

| Rol | Color |
|---|---|
| Background | `#0f0e17` |
| Background alt | `#1a1b26` |
| Foreground | `#e0e0e0` |
| Acento | `#a78bfa` |
| Acento dim | `#7c3aed` |
| Acento 2 | `#f472b6` |
| Border | `#2d2d44` |
| Urgente | `#ef4444` |

---

## Personalización

1. Editá los archivos en `dotfiles/`
2. Corré `./install-dotfiles.sh` para instalar los cambios
3. Recargá i3 con `Alt + Shift + C`

---

## Licencia

MIT
