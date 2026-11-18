# DESIGN.md — shae-v-terminal-system-monitor

SHAE Field Manual design system applied to this V terminal system monitor.

## Palette

| Role | Hex | Usage |
|------|-----|-------|
| Warm paper | #F2EEE5 | Section rules, negative space |
| Ink | #191712 | Primary text, titles, labels |
| Oxide signal | #B3341B | Refresh notice, errors, single signal per view |

Colours are emitted via ANSI escapes in `src/main.v`.

## Typography

- Body / labels: Instrument Sans (terminal falls back to system mono)
- Code / metadata: JetBrains Mono — tabular numerals keep metric columns aligned

## Layout & form

- 0px radius — no rounded corners in the console UI
- 1px borders — hairline rules (`----`) separate sections
- Border-defined cards — each metrics block is framed by rules
- Left-aligned data — every column is left-aligned
- Uppercase only for short labels — metric names stay lowercase

## Motion

The refresh loop redraws the screen; state changes 140–240ms,
transform/opacity/clip-path only, with `prefers-reduced-motion` and
`prefers-reduced-transparency` fallbacks in any future TUI layer. No
animation libraries.

## Accessibility

- WCAG AA contrast between ink and paper; oxide used only as a signal
- Complete keyboard paths — every operation is keyboard-driven
- No horizontal overflow — metric lines are single-line

## Anti-patterns avoided

No gradients, glows, pills, glass cards, shadows, or centered heroes.

## Files

- `src/main.v` — source, ANSI-coloured console UI
- `README.md`, `DESIGN.md` — docs
- `scripts/install.sh`, `Makefile` — build/test/release
- `docs/DE.md`, `docs/ES.md` — German / Spanish
