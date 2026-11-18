# shae-v-terminal-system-monitor (Deutsch)

Terminal-Systemmonitor in V, nach dem SHAE Field Manual Design System:
warmes Papier #F2EEE5, Tinte #191712, ein Oxid-Rot #B3341B als einziges
Signal pro Ansicht, 0px Radius, 1px Rahmen, Monospace-Metadaten,
WCAG-AA-Kontrast, reduzierte-Bewegung-Fallbacks.

## Funktionen

- CPU- und Arbeitsspeicher-Auslastung anzeigen
- Festplattennutzung und Laufzeit anzeigen
- Laufende Prozesse anzeigen (Top N)
- Aktualisierungsintervall

## Installation

Erfordert den V-Compiler (nicht lokal verfügbar). Kann nicht lokal
kompiliert-getestet werden.

```bash
# V installieren: https://vlang.io

git clone https://github.com/spdedsec/shae-v-terminal-system-monitor.git
cd shae-v-terminal-system-monitor

v -prod -o monitor src/main.v
```

## Verwendung

```bash
./monitor [--interval N] [--top N]
```

## Design-System

Siehe `DESIGN.md`. Die Konsolenausgabe nutzt die SHAE-Palette über
ANSI-Escape-Sequenzen.

## Lizenz

MIT. Siehe `LICENSE`.
