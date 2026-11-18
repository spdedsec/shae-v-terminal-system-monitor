# shae-v-terminal-system-monitor (Español)

Monitor de terminal del sistema en V, basado en el SHAE Field Manual
design system: papel cálido #F2EEE5, tinta #191712, una señal óxido
#B3341B por vista, 0px de radio, bordes de 1px, metadatos monoespaciados,
contraste WCAG AA, fallback de movimiento reducido.

## Funcionalidades

- Mostrar uso de CPU y memoria
- Mostrar uso de disco y tiempo de actividad
- Mostrar procesos en ejecución (top N)
- Intervalo de actualización

## Instalación

Requiere el compilador V (no disponible localmente). No se puede
compilar-probar localmente.

```bash
# Instalar V: https://vlang.io

git clone https://github.com/spdedsec/shae-v-terminal-system-monitor.git
cd shae-v-terminal-system-monitor

v -prod -o monitor src/main.v
```

## Uso

```bash
./monitor [--interval N] [--top N]
```

## Sistema de diseño

Véase `DESIGN.md`. La salida por consola usa la paleta SHAE mediante
secuencias de escape ANSI.

## Licencia

MIT. Véase `LICENSE`.
