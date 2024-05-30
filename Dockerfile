FROM python:latest

# Establece el directorio de trabajo
WORKDIR /app

# Copia el archivo de requisitos y el código de la aplicación al contenedor
COPY app.py app.py
COPY templates/ templates/
COPY static/ static/

# Instala las dependencias
RUN pip install flask

# Expone el puerto que usará la aplicación Flask
EXPOSE 5000

# Define el comando por defecto para ejecutar la aplicación
CMD ["python", "app.py"]
