Únete al [Discord](https://discord.gg/UtX85nAdX)!


# RestauraCarpeta 🎮✨

**RestauraCarpeta** es una herramienta ligera y automatizada mediante scripts de Windows (`.bat`) diseñada para la comunidad de modding. Te permite tomar una "instantánea" de la carpeta limpia de cualquier juego antes de modificarlo, para que luego puedas eliminar por completo todos los mods, archivos añadidos y configuraciones con un solo clic, devolviendo el directorio a su estado original (Vanilla).

Lo mejor de todo: al terminar la limpieza, ¡el script se auto-destruye para no dejar rastro alguno!

## 🚀 Características
* 📸 **Captura inteligente:** Guarda un registro de todos los archivos y subcarpetas originales del juego.
* 🧹 **Limpieza profunda sin riesgos:** Borra los archivos de los mods y elimina las carpetas vacías sobrantes sin alterar ni congelar los archivos originales del juego.
* 💥 **Auto-destrucción:** Al finalizar la restauración, borra la lista de texto, el script de guardado y a sí mismo para dejar la carpeta 100% limpia.
* 🪶 **Ligero:** No requiere instalación de software de terceros ni programas pesados, solo la consola nativa de Windows (CMD).

## 🛠️ Cómo utilizarlo

### Paso 1: Guardar el estado limpio (Antes de instalar mods)
1. Descarga y copia los archivos `Guardar_folder_limpio.bat` y `Restaurar_folder_limpio.bat` dentro de la carpeta raíz de tu juego (donde está el ejecutable `.exe`).
2. Haz doble clic sobre **`Guardar_folder_limpio.bat`**.
3. Se generará un archivo llamado `lista_limpia.txt`. ¡Listo! Tu copia de seguridad lógica está creada.

### Paso 2: Instala tus mods con total libertad
Ahora puedes instalar **OptiScaler**, scripts, texturas o cualquier mod que requiera colocarse en la carpeta del juego.

### Paso 3: Restaurar el juego original
1. Cuando quieras dejar el juego limpio de nuevo, haz doble clic en **`Restaurar_folder_limpio.bat`**.
2. Presiona la tecla **`S`** para confirmar la acción.
3. El script eliminará automáticamente todo lo que no pertenezca al juego original, borrará los archivos de configuración generados por los mods y, finalmente, se eliminará a sí mismo junto con el resto de componentes de esta herramienta.

## ⚠️ Requisitos
* Sistema operativo **Windows**.
* Ejecutar en una ruta con permisos de escritura (si tu juego está en `Program Files`, es posible que necesites ejecutar el script de restauración como Administrador).
