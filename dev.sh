#!/usr/bin/env bash

php artisan serve &
LARAVEL_PID=$!

npm run dev &
VITE_PID=$!

cleanup() {
    echo ""
    echo "Stopping Laravel and Vite..."
    kill "$LARAVEL_PID" "$VITE_PID" 2>/dev/null
    wait "$LARAVEL_PID" "$VITE_PID" 2>/dev/null
    echo "Development servers stopped."
}

trap cleanup INT TERM EXIT

wait