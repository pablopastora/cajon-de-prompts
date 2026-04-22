# 📦 Cajón de Prompts

Biblioteca de prompts para investigación doctoral. Organiza, busca y reutiliza tus prompts de IA, con mejora automática mediante Llama 3.2 en local.

---

## ¿Qué es esto?

Una herramienta sencilla para investigadores que acumulan prompts útiles dispersos en documentos Word sin orden ni estructura. El Cajón de Prompts te permite organizarlos por categorías, buscarlos, copiarlos con un clic y compartirlos con tu grupo de investigación.

**Sin instalar nada. Sin crear cuentas. Sin pagar.**

---

## Funcionalidades

- 📁 Categorías predefinidas para investigación: búsqueda bibliográfica, escritura académica, análisis de datos, metodología, revisión...
- 💾 Los prompts se guardan en el navegador y persisten aunque cierres el ordenador
- 🔍 Búsqueda por título, texto y etiquetas
- ⧉ Copia cualquier prompt al portapapeles con un clic
- ↕ Exporta e importa colecciones en JSON para compartir con tu grupo
- ✦ Mejora de prompts con IA local usando Ollama + Llama 3.2 (opcional, gratuito)

---

## Uso rápido (sin IA)

1. Descarga el archivo `CajonDePrompts.html`
2. Ábrelo en tu navegador
3. Listo

> ⚠ **Importante:** abre siempre la app desde `http://localhost:8080` usando el servidor Python o el archivo `.bat` — no con doble clic directo sobre el HTML. Si la abres directamente, los prompts no se guardarán correctamente.

---

## Uso con IA (Ollama + Llama 3.2) — Windows

La función de mejora de prompts con IA requiere instalar Ollama. Solo hay que hacerlo una vez.

### Paso 1 — Instalar Ollama

1. Ve a [ollama.com](https://ollama.com) y descarga la versión para Windows
2. Ejecuta el instalador y sigue los pasos
3. Cuando termine, verás el icono de una llama 🦙 en la barra de tareas

### Paso 2 — Descargar el modelo Llama 3.2

Abre PowerShell y ejecuta:

```powershell
ollama pull llama3.2
```

Tarda unos minutos (el modelo pesa ~2 GB). Solo se descarga una vez.

### Paso 3 — Desbloquear el archivo .bat

Windows bloquea por seguridad los archivos `.bat` descargados de internet. Hay que desbloquearlo una sola vez:

1. Clic derecho sobre `Abrir_CajonDePrompts.bat`
2. Selecciona **Propiedades**
3. Abajo del todo, marca la casilla **"Desbloquear"**
4. Clic en **Aceptar**

### Paso 4 — Usar la app (lo único que harás cada vez)

**Doble clic en `Abrir_CajonDePrompts.bat`**

El archivo hace todo automáticamente:
- Para Ollama si ya estaba corriendo
- Lo relanza con los permisos correctos
- Lanza el servidor local
- Abre la app en el navegador

En unos segundos verás **"Ollama: conectado"** en la esquina inferior izquierda de la app.

> ⚠ No cierres la ventana negra que aparece al abrir el .bat. Es la que mantiene Ollama y el servidor funcionando. Ciérrala solo cuando termines de usar la app.

---

## Problemas frecuentes

| Problema | Solución |
|---|---|
| Windows bloquea el .bat | Clic derecho → Propiedades → marcar "Desbloquear" → Aceptar |
| "Ollama: no conectado" en la app | Cierra el .bat y vuelve a abrirlo. Espera unos segundos |
| La app no guarda los prompts | Estás abriendo el HTML con doble clic. Usa siempre el .bat |
| El .bat se abre y se cierra rápido | Clic derecho sobre el .bat → Ejecutar como administrador |
| La IA tarda mucho en responder | Normal la primera vez. Llama 3.2 necesita ~30 segundos para cargarse |

---

## Archivos del repositorio

| Archivo | Descripción |
|---|---|
| `CajonDePrompts.html` | La app completa |
| `Abrir_CajonDePrompts.bat` | Lanzador automático para Windows (Ollama + servidor + navegador) |
| `Tutorial_CajonDePrompts.docx` | Tutorial completo en Word para compartir con otros |

---

## Créditos

Creado en el Curso de Herramientas IA para la Investigación Doctoral — Universidad de Málaga.  
Construido con [Claude](https://claude.ai) sin escribir una línea de código a mano.
