@echo off
title Cajón de Prompts — Iniciando...
color 0A

echo.
echo  ================================================
echo   Cajón de Prompts — Iniciando IA y servidor...
echo  ================================================
echo.

REM ── 1. Parar Ollama si ya estaba corriendo ──────────────────────────────
echo  [1/4] Preparando Ollama...
taskkill /f /im ollama.exe >nul 2>&1
timeout /t 2 /nobreak >nul

REM ── 2. Arrancar Ollama con permisos CORS ────────────────────────────────
echo  [2/4] Arrancando Ollama con permisos para la app...
set OLLAMA_ORIGINS=*
set OLLAMA_HOST=0.0.0.0
start "" /min cmd /c "ollama serve"
echo      Esperando que Ollama arranque...
timeout /t 4 /nobreak >nul

REM ── 3. Arrancar servidor Python ─────────────────────────────────────────
echo  [3/4] Iniciando servidor local...
start "" /min cmd /c "python -m http.server 8080"
timeout /t 2 /nobreak >nul

REM ── 4. Abrir navegador ──────────────────────────────────────────────────
echo  [4/4] Abriendo la app en el navegador...
start "" "http://localhost:8080/CajonDePrompts.html"

echo.
echo  ================================================
echo   ✓ Listo. La app se abre en tu navegador.
echo.
echo   IMPORTANTE: No cierres esta ventana mientras
echo   uses la app. Al cerrarla, se detiene todo.
echo  ================================================
echo.
pause
