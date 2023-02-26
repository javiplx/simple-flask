from flask import Flask

app = Flask(__name__)

@app.route('/', defaults={"path": "/"})
@app.route('/<path:path>')
def index(path):
   response = ["Hello world!"]
   if path != "/":
      response.append(f"(from {path})")
   return "<BR />".join(response)

if __name__ == "__main__":
    app.run()
