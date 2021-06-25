#!/bin/bash

if [[ -n $RCLONE_CONFIG_BASE64 ]]; then
	echo "Rclone config detected"
	echo "[DRIVE]" > rclone.conf
    mkdir -p /app/.config/rclone
	echo "$(echo $RCLONE_CONFIG_BASE64|base64 -d)" >> /app/.config/rclone/rclone.conf
fi

if [[ -n $RCLONE_SERACC1_BASE64 ]]; then
	echo "Rclone service account detected"
	echo "[DRIVE]" > rclone.conf
    mkdir -p /app/.config/rclone
	echo "$(echo $RCLONE_SERACC1_BASE64|base64 -d)" >> /app/.config/rclone/rclone1.json
fi
if [[ -n $RCLONE_SERACC2_BASE64 ]]; then
	echo "Rclone service account detected"
	echo "[DRIVE]" > rclone.conf
    mkdir -p /app/.config/rclone
	echo "$(echo $RCLONE_SERACC2_BASE64|base64 -d)" >> /app/.config/rclone/rclone2.json
fi
if [[ -n $RCLONE_SERACC3_BASE64 ]]; then
	echo "Rclone service account detected"
	echo "[DRIVE]" > rclone.conf
    mkdir -p /app/.config/rclone
	echo "$(echo $RCLONE_SERACC3_BASE64|base64 -d)" >> /app/.config/rclone/rclone3.json
fi
if [[ -n $RCLONE_SERACC4_BASE64 ]]; then
	echo "Rclone service account detected"
	echo "[DRIVE]" > rclone.conf
    mkdir -p /app/.config/rclone
	echo "$(echo $RCLONE_SERACC4_BASE64|base64 -d)" >> /app/.config/rclone/rclone4.json
fi
if [[ -n $RCLONE_SERACC5_BASE64 ]]; then
	echo "Rclone service account detected"
	echo "[DRIVE]" > rclone.conf
    mkdir -p /app/.config/rclone
	echo "$(echo $RCLONE_SERACC5_BASE64|base64 -d)" >> /app/.config/rclone/rclone5.json
fi

if [[ -n $BOT_TOKEN && -n $OWNER_ID ]]; then
	echo "Bot token and owner ID detected"
	python3 config.py
fi

echo "SETUP COMPLETED"

npm start
