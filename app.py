from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
    name = "Tu Nombre"  # Cambia esto por tu nombre
    return render_template('index.html', name=name)

if __name__ == '__main__':
    app.run(debug=True)