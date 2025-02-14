from flask import Flask, request, jsonify
from flask_cors import CORS

app = Flask(__name__)
CORS(app)  # Enable CORS for all routes
print("hello")
@app.route('/greet', methods=['GET'])

def greet():
    print(request.args)
    name = request.args.get('name', 'World')

    return jsonify({"message": f"Hello {name}"})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)

