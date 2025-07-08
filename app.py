from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, welcome to Simple Flask app \nCheck Server health at /health'

@app.route('/health')
def health():
    return 'Server is up and running'
