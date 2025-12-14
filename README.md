# Pysche

A personal repository containing my preferred developer settings and configurations.

## Contents

- **Bash**: Custom `.bashrc` with aliases, navigation shorthands, and git shortcuts.
- **Starship**: Configuration for the [Starship](https://starship.rs/) prompt.

## Usage

You can symlink these files to their respective locations locally.

### Bash
Link `.bashrc` to your home directory:
```bash
ln -s $(pwd)/bash/.bashrc ~/.bashrc
```

### Starship
Link `starship.toml` to your config directory:
```bash
mkdir -p ~/.config
ln -s $(pwd)/starship/starship.toml ~/.config/starship.toml
```
