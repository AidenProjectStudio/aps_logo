## APS Logo — Affichage du logo serveur (FiveM)

### FR — Présentation
Ce script affiche un logo personnalisé dans l’interface (NUI) de votre serveur FiveM. Il est léger, autonome et entièrement configurable (position, taille min/max, largeur en vw, opacité).

- **Frameworks**: fonctionne avec ESX, vRP ou en standalone
- **Dépendances**: aucune
- **Type**: NUI (HTML/CSS/JS)

### FR — Fonctionnalités
- **Affichage du logo** via NUI
- **Position** configurable: haut droite, bas droite, haut centre, haut gauche
- **Taille responsive**: largeur en vw + garde-fous min/max en px
- **Opacité** ajustable
- **Sans dépendance externe**

### FR — Installation
1. Copier le dossier `aps_logo` dans `resources`.
2. Ajouter à votre `server.cfg`:
   ```
   ensure aps_logo
   ```
3. Démarrer/recharger le serveur.

### FR — Configuration rapide
Modifier `config.lua`:
```lua
Config.Position = "bottom-right"  -- "top-right" | "bottom-right" | "top-center" | "top-left"
Config.WidthVW = 10               -- largeur en vw (10 = 10% de la largeur écran)
Config.MinWidth = 80              -- largeur minimale en px
Config.MaxWidth = 200             -- largeur maximale en px
Config.Opacity = 0.9              -- 0.0 (transparent) → 1.0 (opaque)
```

- **Positions disponibles**:
  - `"top-right"`: en haut à droite
  - `"bottom-right"`: en bas à droite
  - `"top-center"`: en haut centré
  - `"top-left"`: en haut à gauche

### FR — Personnalisation du logo
- Remplacez l’image `html/logo.png` par votre propre logo (même nom de fichier conseillé).
- Si vous changez le nom, mettez à jour le `src` dans `html/index.html`.
- Ajustez les styles avancés dans `html/style.css`. Les classes de position disponibles:
  - `.logo-top-right`, `.logo-bottom-right`, `.logo-top-center`, `.logo-top-left`

### FR — Fonctionnement (technique)
- `client.lua` envoie la configuration au NUI au démarrage du resource (`SendNUIMessage` avec `action = "setConfig"`).
- `html/index.html` applique dynamiquement la config (position, largeur vw, min/max px, opacité).
- `html/style.css` définit les classes de position et utilise des variables CSS pour la taille.

### FR — Conseils & dépannage
- Logo trop grand/petit: ajustez `WidthVW`, `MinWidth`, `MaxWidth`.
- Logo trop transparent: augmentez `Opacity` vers `1.0`.
- Logo mal positionné: vérifiez `Config.Position` et les classes CSS correspondantes.

### FR — Compatibilité
- `fx_version`: cerulean
- Jeu: gta5
- NUI compatible avec la plupart des builds FiveM récents.

### FR — Crédits
- **Auteur**: Aiden Project Studio
- **Nom du resource**: `aps-logo`
- **Version**: 1.0.0

---

## EN — Overview
This script displays a custom logo in your FiveM server HUD using NUI. It’s lightweight, standalone, and fully configurable (position, min/max size, vw width, opacity).

- **Frameworks**: works with ESX, vRP, or standalone
- **Dependencies**: none
- **Type**: NUI (HTML/CSS/JS)

### EN — Features
- **Logo display** through NUI
- **Configurable position**: top-right, bottom-right, top-center, top-left
- **Responsive sizing**: vw width + min/max px guards
- **Adjustable opacity**
- **No external dependencies**

### EN — Installation
1. Copy the `aps_logo` folder into `resources`.
2. Add to your `server.cfg`:
   ```
   ensure aps_logo
   ```
3. Start/restart the server.

### EN — Quick Configuration
Edit `config.lua`:
```lua
Config.Position = "bottom-right"  -- "top-right" | "bottom-right" | "top-center" | "top-left"
Config.WidthVW = 10               -- width in vw (10 = 10% of screen width)
Config.MinWidth = 80              -- minimum width in px
Config.MaxWidth = 200             -- maximum width in px
Config.Opacity = 0.9              -- 0.0 (transparent) → 1.0 (opaque)
```

- **Available positions**:
  - `"top-right"`: top right
  - `"bottom-right"`: bottom right
  - `"top-center"`: top center
  - `"top-left"`: top left

### EN — Logo customization
- Replace `html/logo.png` with your own logo (same filename recommended).
- If you rename it, update the `src` in `html/index.html`.
- Tweak advanced styles in `html/style.css`. Available position classes:
  - `.logo-top-right`, `.logo-bottom-right`, `.logo-top-center`, `.logo-top-left`

### EN — How it works (tech)
- `client.lua` sends config to NUI on resource start (`SendNUIMessage` with `action = "setConfig"`).
- `html/index.html` applies config dynamically (position, vw width, min/max px, opacity).
- `html/style.css` defines position classes and uses CSS variables for sizing.

### EN — Tips & Troubleshooting
- Logo too big/small: adjust `WidthVW`, `MinWidth`, `MaxWidth`.
- Logo too transparent: increase `Opacity` towards `1.0`.
- Wrong position: check `Config.Position` and matching CSS classes.

### EN — Compatibility
- `fx_version`: cerulean
- Game: gta5
- NUI compatible with most recent FiveM builds.

### EN — Credits
- **Author**: Aiden Project Studio
- **Resource name**: `aps-logo`
- **Version**: 1.0.0

---

### Changelog
- 1.0.0: Première version / Initial release
