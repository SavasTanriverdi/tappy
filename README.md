# Tappy

Tappy is a fast-paced arcade game built with the Godot Engine. Pilot a plucky plane through an endless series of obstacles, collect points, and chase high scores while enjoying a vibrant, parallax-scrolling world.

## Preview

<img width="768" height="1344" alt="tappy" src="https://github.com/user-attachments/assets/055755b5-2725-400c-b36b-402fa283a709" />

![Gameplay Preview](docs/media/tappy-gameplay.gif)

## Features

- Responsive tap-to-fly controls for quick pick-up-and-play sessions
- Layered parallax backgrounds and polished visual effects
- Score and high-score tracking backed by reusable Godot resources
- Dynamic obstacle generation and escalating difficulty curve
- Lightweight Godot project structure that is easy to extend

## Getting Started

### Prerequisites

- [Godot Engine 4.x](https://godotengine.org/download) (Standard or .NET edition)

### Clone the Repository

```powershell
# From a terminal
cd "c:/Users/savas/Documents/My Godot Projects"
git clone https://github.com/SavasTanriverdi/tappy.git
```

### Open in Godot

1. Launch Godot.
2. Click **Import** on the project manager screen.
3. Select the `project.godot` file in the cloned repository directory.
4. Click **Import & Edit** to open the project.

## How to Play

- Tap or press the primary action key to keep the plane airborne.
- Avoid obstacles and hazards; a single collision ends the run.
- Pass each obstacle to earn points and beat your high score.

## Project Structure

- `scene/` – Core gameplay scenes, UI, and reusable scene components
- `globals/` – Autoloaded scripts handling score, state, and signal management
- `assets/` – Art, audio, and font imports used across the project
- `parallax/` – Parallax background scenes and resources

## Contributing

Contributions are welcome! If you would like to report a bug, propose a feature, or submit a pull request:

1. Fork the repository and create a feature branch.
2. Make your changes, adhering to the existing code style.
3. Add or update tests and scenes where relevant.
4. Submit a pull request with a clear description and screenshots or GIFs when helpful.

## License

This project is distributed under the MIT License. See the [`LICENSE`](LICENSE) file for details.
