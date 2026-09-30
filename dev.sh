#!/data/data/com.termux/files/usr/bin/bash

echo "Starting Laravel..."
php artisan serve &
LARAVEL_PID=$!

cleanup() {
    echo ""
    echo "Stopping Laravel..."
    kill "$LARAVEL_PID" 2>/dev/null
    wait "$LARAVEL_PID" 2>/dev/null
    echo "Development servers stopped."
}

trap cleanup INT TERM EXIT

echo "Starting Vite..."
cd ~/raya21-node
./node_modules/.bin/vite --config ~/raya21-node/vite.config.js
