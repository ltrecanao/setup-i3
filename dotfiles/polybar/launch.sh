#!/bin/bash

# Terminar instancias previas
pkill -x polybar 2>/dev/null || true
sleep 0.5

# Lanzar polybar con nohup para que no muera con el script
nohup polybar main >>/tmp/polybar.log 2>&1 &

echo "Polybar lanzada (PID: $!)"
