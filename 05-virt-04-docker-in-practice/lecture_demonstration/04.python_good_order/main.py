from flask import Flask
import os
app = Flask(__name__)

@app.route('/')
def hello_world():
    test_string = os.environ.get('TEST_STRING', '')  # Считываем значение переменной среды TEST_STRING
    return f'Привет, {test_string}!!!!!!!!!!!!!!!!!!!!!! '  # Добавляем значение TEST_STRING в конец строки

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')