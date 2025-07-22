from flask import Flask, request, jsonify
app = Flask(__name__)

@app.route('/health', methods=['GET'])
def health():
    return "Order service is healthy", 200

@app.route('/order', methods=['POST'])
def place_order():
    data = request.get_json()
    item = data.get('item')
    return jsonify({"message": f"Order placed for {item}"}), 201

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=3002)
