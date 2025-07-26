from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    return "✅ Order service is running", 200

@app.route('/health')
def health():
    return "Order service healthy", 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=3002)

