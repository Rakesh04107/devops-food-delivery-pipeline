from flask import Flask, request, jsonify
app = Flask(__name__)

@app.route('/health', methods=['GET'])
def health():
    return "Payment service is healthy", 200

@app.route('/pay', methods=['POST'])
def pay():
    data = request.get_json()
    amount = data.get('amount')
    return jsonify({"message": f"Payment of ₹{amount} processed"}), 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=3003)
