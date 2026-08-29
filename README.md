# TNT Arrow Datapack

<img src="pack.png">

A Minecraft datapack that adds the **Blast Bow** and **Blast Crossbow**, custom weapons that fire explosive arrows.

## Features

- **Blast Bow**: A custom bow that fires explosive arrows
- **Blast Crossbow**: A custom crossbow that fires explosive arrows
- **Surface Collision Detection**: Explosive projectiles can detonate when they hit the ground, walls, or ceilings
- **Distance-Based Power**: The farther a projectile travels, the stronger its explosion becomes
- **Arrow Consumption**: Firing the Blast Bow or Blast Crossbow consumes arrows instead of TNT
- **Multishot Support**: The Blast Crossbow supports the Multishot enchantment

## Crafting

### Blast Bow

Combine a **Bow** and **TNT** to craft the **Blast Bow**.

The recipe is shapeless and is automatically unlocked when you obtain a bow.

### Blast Crossbow

Combine a **Crossbow** and **TNT** to craft the **Blast Crossbow**.

The recipe is shapeless and is automatically unlocked when you obtain a crossbow.

## How It Works

When a Blast Bow or Blast Crossbow is fired, the arrow is converted into an explosive projectile while preserving its flight direction and ownership.

The projectile continuously checks for collisions with nearby blocks. When it reaches a surface, it detonates and creates an explosion whose power is determined by the distance it has traveled.

## Installation

1. Download the latest release from the [Releases](../../releases) page
2. Place the datapack ZIP file into your world's `datapacks` directory
3. Load the world, or run `/reload` if the world is already open

## Requirements

- Minecraft Java Edition
- Supported versions: **1.21.4 – 26.2**

## License

MIT License — see the [LICENSE](LICENSE) file for details.

## Contributing

Issues and pull requests are welcome.
