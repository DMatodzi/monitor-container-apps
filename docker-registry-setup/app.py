from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return "Hello,Cybersafe this is your Flask app running!"

@app.route('/data')
def data():
    return jsonify({"message": "This is some data from the server"})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
