from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "✅ Payment Service is running!"

@app.route('/health')
def health():
    return "Payment service is healthy", 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=3003)

