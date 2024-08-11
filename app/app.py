from flask import Flask, jsonify, request
from healthcheck import HealthCheck

app = Flask(__name__)
health = HealthCheck()

app.add_url_rule('/health', 'health', view_func=lambda: health.run())

@app.route('/', methods=['GET'])
def home():
    return jsonify({'msg': 'BC4M'})

@app.route('/', methods=['POST'])
def echo_body():
    data = request.get_json()
    return jsonify(data)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)

