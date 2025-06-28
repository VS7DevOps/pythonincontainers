from flask import Flask


app = Flask(__name__)

@app.route('/')
def hellow_world():
    return 'HELLOW WORLD FROM FLASK'


@app_route('/test')
def test():
    return 'TEST FROM FLASK'



if __name__ == '__main__':
    app.run(debug=False, host='0.0.0.0', port=5000)

