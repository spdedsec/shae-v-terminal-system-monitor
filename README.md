# shae-v-terminal-system-monitor

Terminal system monitor written in V, built on the SHAE Field Manual
design system: warm paper #F2EEE5, ink #191712, one oxide-red #B3341B
signal per view, 0px radius, 1px borders, border-defined cards,
monospace metadata, WCAG AA contrast, reduced-motion fallbacks.

## Features

- show CPU usage, memory usage
- show disk usage, uptime
- show running processes (top N)
- refresh interval

## Install

Requires the V compiler (not available locally). Cannot compile-test locally.

```bash
# Install V: https://vlang.io

git clone https://github.com/spdedsec/shae-v-terminal-system-monitor.git
cd shae-v-terminal-system-monitor

v -prod -o monitor src/main.v
```

Or use the installer:

```bash
./scripts/install.sh
```

## Usage

```bash
./monitor [--interval N] [--top N]
```

Example output:

```
shae-v-terminal-system-monitor
----------------------------------------
CPU
----------------------------------------
  Usage: 4.2%

Memory
----------------------------------------
  Total: 16384000 kB
  Available: 8192000 kB
  Usage: 50.0%

Disk
----------------------------------------
  ... bytes total, disk reads: ..., writes: ...

Uptime
----------------------------------------
  2 days, 3 hours, 12 minutes

Top Processes (by RSS)
----------------------------------------
  PID      CMD                     RSS kB
----------------------------------------
  1234     shae-monitor            45000
...
```

Metrics read from `/proc` (Linux-specific).

## Design system

See `DESIGN.md`. Console rendering applies the SHAE palette via ANSI
escapes:

- Warm paper `#F2EEE5` — section rules
- Ink `#191712` — primary text
- Oxide `#B3341B` — single signal (refresh notice/errors)

Tables are left-aligned, monospace, hairline-ruled. No gradients, glass,
pills, or shadows.

## Build / release

```bash
make build      # v -prod -o monitor
make release    # source tarball for GitHub release v0.1.0
```

The V compiler is required and is not available locally.

## License

MIT. See `LICENSE`.
