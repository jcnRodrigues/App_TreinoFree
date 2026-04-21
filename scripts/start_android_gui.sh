#!/usr/bin/env bash
set -euo pipefail

PROJECT_DIR="/Users/joao/Documents/Projects/App_TreinoFree"
EMULATOR_BIN="$HOME/Library/Android/sdk/emulator/emulator"
ADB_BIN="$HOME/Library/Android/sdk/platform-tools/adb"
AVD_NAME="TreinoFree_Lite_API30"
DEVICE_ID="emulator-5554"

wait_for_device() {
  local timeout_secs="${1:-180}"
  local start
  start=$(date +%s)

  while true; do
    if "$ADB_BIN" devices | awk 'NR>1 && $1=="'"$DEVICE_ID"'" && $2=="device" { found=1 } END { exit(found?0:1) }'; then
      local boot
      boot=$("$ADB_BIN" -s "$DEVICE_ID" shell getprop sys.boot_completed 2>/dev/null | tr -d '\r' || true)
      local anim
      anim=$("$ADB_BIN" -s "$DEVICE_ID" shell getprop init.svc.bootanim 2>/dev/null | tr -d '\r' || true)
      if [[ "$boot" == "1" || "$anim" == "stopped" ]]; then
        return 0
      fi
    fi

    if (( $(date +%s) - start > timeout_secs )); then
      return 1
    fi
    sleep 2
  done
}

echo "[1/4] Reiniciando adb e processos antigos..."
pkill -9 -f qemu-system || true
pkill -9 -f "emulator.*$AVD_NAME" || true
"$ADB_BIN" kill-server || true
"$ADB_BIN" start-server >/dev/null

echo "[2/4] Iniciando emulador GUI (swiftshader)..."
nohup "$EMULATOR_BIN" -avd "$AVD_NAME" -gpu swiftshader_indirect -no-snapshot-load > /tmp/treinofree_emulator_gui.log 2>&1 &

if ! wait_for_device 180; then
  echo "[fallback] Tentando GPU host..."
  pkill -9 -f "emulator.*$AVD_NAME" || true
  nohup "$EMULATOR_BIN" -avd "$AVD_NAME" -gpu host -no-snapshot-load > /tmp/treinofree_emulator_gui.log 2>&1 &

  if ! wait_for_device 180; then
    echo "Erro: emulador não ficou online. Veja: /tmp/treinofree_emulator_gui.log"
    exit 1
  fi
fi

echo "[3/4] Emulador online em $DEVICE_ID"

cd "$PROJECT_DIR"
echo "[4/4] Executando Flutter no Android..."
flutter run -d "$DEVICE_ID"
