from flask import Flask, request, url_for
from flask_pymongo import PyMongo

app = Flask(__name__)
app.config['MONGO_URI'] = 'mongodb://localhost:27017/cadastrodb'

mongo = PyMongo(app)


@app.route('/')
def index():
    return '''
        <form method="POST" action="/create" enctype="multipart/form-data">
            <input type="type" name="username">
            <input type="file" name="profile_image">
            <input type="submit">
        </form>
    '''


@app.route('/create', methods=['POST'])
def create():
    if 'profile_image' in request.files:
        profile_image = request.files['profile_image']
        mongo.save_file(profile_image.filename, profile_image)
        mongo.db.users.insert({'username': request.form.get('username'), 'profile_image_name' : profile_image.filename})
        return 'Done!'
    else:
        return 'Not Done!'


@app.route('/file/<filename>')
def file(filename):
    return mongo.send_file(filename)


@app.route('/profile/<username>')
def profile(username):
    user = mongo.db.users.find_one_or_404({'username': username})
    return f'''
        <h1>{username}</h1>
        <img src="{url_for('file', filename=user['profile_image_name'])}">
    '''


if __name__ == "__main__":
    app.run(port=5024)
