from flask import Flask, session, render_template, json, request, url_for, redirect
from werkzeug import generate_password_hash, check_password_hash
# pip install flask-mysql (Mac/Linux)
# pip install Flask-MySQL (Windows)
# pip install flask_table
# pip install pymongo


from flaskext.mysql import MySQL
from contextlib import closing
from flask_pymongo import PyMongo

from modules.projeto import projeto
from modules.dados_site import dados_site
from modules.users import users
from modules.itens_projeto import itens_projeto


# export FLASK_APP=app.py
# export FLASK_DEBUG=1
# flask run

mysql = MySQL()
app = Flask(__name__)
app.secret_key = 'projeto_001'

# MySQL setup
app.config['MYSQL_DATABASE_USER'] = 'app_user'
app.config['MYSQL_DATABASE_PASSWORD'] = '******'
app.config['MYSQL_DATABASE_DB'] = 'appdb'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql.init_app(app)
app.config['MONGO_URI'] = 'mongodb://localhost:27017/cadastrodb'

mongo = PyMongo(app)


@app.route('/showHome')
def showHome():
    try:

        order_by = request.args.get('orderby') if request.args.get('orderby') else 'ts_insercao'

        with closing(mysql.connect()) as conn:
                with closing(conn.cursor()) as cursor:

                    cursor.callproc('sp_GetSite')
                    site = list(cursor)
                    s = dados_site()
                    lista_site = s.json_to_site(site)

                    cursor.callproc('sp_GetUsers')
                    data = list(cursor)

                    p = users()
                    lista = p.json_to_user(data)
                    sorted_list = p.sortList(lista, order_by)

                    return render_template('index.html', lst_users=sorted_list, qtd_itens=len(lista),
                                           mensagem=lista_site[0].mensagem)

    except Exception as e:
        return json.dumps({'error': str(e)})


@app.route('/showProjeto')
def showProjeto():
    try:
        _id = request.args.get('id')
        nome = request.args.get('nome')
        _user_id = session['user_id']

        # verifica id
        if _id:

            with closing(mysql.connect()) as conn:
                with closing(conn.cursor()) as cursor:

                    cursor.callproc('sp_GetDataProjects', (_id, _user_id))
                    data = list(cursor)

                    p = projeto()
                    lista = p.json_to_projeto(data)

                    cursor.callproc('sp_GetDataItensProject', (_id,))
                    dataItens = list(cursor)
                    it = itens_projeto()

                    if dataItens[0][0] != 'nenhum projeto':
                        listaItens = it.json_to_projeto(dataItens)

                        for i in listaItens:
                            user = mongo.db.users.find({'item_proj_id': i.item_id})
                            lst_images = list(user)

                            if len(lst_images) is not 0:
                                nome_arquivo = lst_images[0]['image_name']
                                if 'png' in str.lower(nome_arquivo) or 'jpg' in str.lower(nome_arquivo) or \
                                        'jpeg' in str.lower(nome_arquivo):
                                    i.image_name = nome_arquivo
                                    i.flag_img_visible = ''
                                    i.flag_file_visible = 'hidden'
                                else:
                                    i.flag_img_visible = 'hidden'

                                if 'sql' in str.lower(nome_arquivo) or 'txt' in str.lower(nome_arquivo) or \
                                        'pdf' in str.lower(nome_arquivo) or 'csv' in str.lower(nome_arquivo):
                                    i.file_name = nome_arquivo
                                    i.flag_file_visible = ''
                                    i.flag_img_visible = 'hidden'
                                else:
                                    i.flag_file_visible = 'hidden'
                            else:
                                i.flag_img_visible = 'hidden'
                                i.flag_file_visible = 'hidden'

                    else:
                        listaItens = []

                    return render_template('projeto.html',  projeto=lista[0],
                                           lst_itens=listaItens, qtd_itens=len(listaItens), nome=nome)

    except Exception as e:
        return json.dumps({'error': str(e)})


@app.route('/image/<filename>')
def image(filename):
    return mongo.send_file(filename)


@app.route('/file/<filename>')
def file(filename):
    return mongo.send_file(filename)


@app.route('/showProjetos')
def showProjetos():
    try:
        _id = request.args.get('id')
        nome = request.args.get('nome')

        order_by = request.args.get('orderby') if request.args.get('orderby') else 'data'

        # verifica id
        if _id:

            with closing(mysql.connect()) as conn:
                with closing(conn.cursor()) as cursor:
                    cursor.callproc('sp_GetUserProjects', (_id,))
                    data = list(cursor)

                    if data[0][0] != 'nenhum projeto':
                        p = projeto()
                        lista = p.json_to_projeto(data)
                        sorted_list = p.sortListProjeto(lista, order_by)
                    else:
                        sorted_list = []

                    # return json.dumps(data[0][1])
                    return render_template('lista_projetos.html',  projs=len(sorted_list),
                                           lstProj=sorted_list, nome=nome)

    except Exception as e:
        return json.dumps({'error': str(e)})


@app.route('/showNewProject')
def showNewProject():
    _id = request.args.get('id')
    return render_template('form_projeto.html', id=_id)


@app.route('/showNewItemProject')
def showNewItemProject():
    _item_id = request.args.get('item_id')
    _id = request.args.get('id')
    _nome = request.args.get('nome')

    if _item_id:
        with closing(mysql.connect()) as conn:
                with closing(conn.cursor()) as cursor:

                    cursor.callproc('sp_GetDataItemProject', (_item_id,))
                    dataItens = list(cursor)
                    it = itens_projeto()

                    if dataItens[0][0] != 'nenhum projeto':
                        listaItens = it.json_to_projeto(dataItens)

    if _item_id:
        return render_template('form_item_projeto.html', id=_id, nome=_nome, item=listaItens[0])
    else:
        i = itens_projeto()
        i.nome = ''
        i.descricao = ''
        return render_template('form_item_projeto.html', id=_id, nome=_nome, item=i)


@app.route('/')
def main():
    try:

        order_by = request.args.get('orderby') if request.args.get('orderby') else 'ts_insercao'

        with closing(mysql.connect()) as conn:
                with closing(conn.cursor()) as cursor:

                    cursor.callproc('sp_GetSite')
                    site = list(cursor)
                    s = dados_site()
                    lista_site = s.json_to_site(site)

                    cursor.callproc('sp_GetUsers')
                    data = list(cursor)

                    p = users()
                    lista = p.json_to_user(data)
                    sorted_list = p.sortList(lista, order_by)

                    return render_template('index.html', lst_users=sorted_list, qtd_itens=len(lista),
                                           mensagem=lista_site[0].mensagem)

    except Exception as e:
        return json.dumps({'error': str(e)})


@app.route('/showSignUp')
def showSignUp():
    return render_template('signup.html')


@app.route('/showLogin')
def showLogin():
    return render_template('login.html')

@app.route('/showLogout')
def showLogout():
    session.clear()
    return redirect('showHome')


@app.route('/signUp', methods=['POST', 'GET'])
def signUp():
    try:
        _name = request.form['inputName']
        _email = request.form['inputEmail']
        _password = request.form['inputPassword']

        # Valida os dados recebidos
        if _name and _email and _password:

            with closing(mysql.connect()) as conn:
                with closing(conn.cursor()) as cursor:

                    _hashed_password = generate_password_hash(_password)
                    cursor.callproc('sp_createUser', (_name, _email, _hashed_password))
                    data = cursor.fetchall()

                    if len(data) is 0:
                        conn.commit()
                        return json.dumps({'message ': 'User criado com sucesso!'})
                    else:
                        print(str(data[0]))
                        return json.dumps({'error ': str(data[0])})
        else:
            return json.dumps({'error': '<span>preencha os campos requeridos</span>'})

    except Exception as e:
        return json.dumps({'error': str(e)})


@app.route('/concluirProjeto', methods=['POST', 'GET'])
def concluirProjeto():
    try:
        _proj_id = request.args.get('id')
        _user_id = session['user_id']

        # Valida os dados recebidos
        if _proj_id:

            with closing(mysql.connect()) as conn:
                with closing(conn.cursor()) as cursor:

                    cursor.callproc('sp_concluirProjeto', (_proj_id,))
                    data = cursor.fetchall()

                    if len(data) is 1:
                        conn.commit()

                        return redirect('showProjetos?id='+str(_user_id))
                    else:
                        return json.dumps({'error ': str(data[0])})
        else:
            return json.dumps({'error': '<span>preencha os campos requeridos</span>'})

    except Exception as e:
        return json.dumps({'error': str(e)})


@app.route('/excluirProjeto', methods=['POST', 'GET'])
def excluirProjeto():
    try:
        _proj_id = request.args.get('id')
        _user_id = session['user_id']

        # Valida os dados recebidos
        if _proj_id:

            with closing(mysql.connect()) as conn:
                with closing(conn.cursor()) as cursor:

                    cursor.callproc('sp_excluirProjeto', (_proj_id,))
                    data = cursor.fetchall()

                    if len(data) is 1:
                        conn.commit()

                        return redirect('showProjetos?id='+str(_user_id))
                    else:
                        return json.dumps({'error ': str(data[0])})
        else:
            return json.dumps({'error': '<span>preencha os campos requeridos</span>'})

    except Exception as e:
        return json.dumps({'error': str(e)})


@app.route('/excluiItemProject', methods=['POST', 'GET'])
def excluiItemProject():
    try:
        _item_id = request.args.get('item_id')
        _id = request.args.get('id')

        # Valida os dados recebidos
        if _item_id:

            with closing(mysql.connect()) as conn:
                with closing(conn.cursor()) as cursor:

                    cursor.callproc('sp_excluiItemProjeto', (_item_id,))
                    data = cursor.fetchall()

                    if len(data) is 1:
                        conn.commit()

                        return redirect('showProjeto?id='+_id)
                    else:
                        return json.dumps({'error ': str(data[0])})
        else:
            return json.dumps({'error': '<span>preencha os campos requeridos</span>'})

    except Exception as e:
        return json.dumps({'error': str(e)})


@app.route('/newProject', methods=['POST', 'GET'])
def newProject():
    try:
        _id = session['user_id']
        _name = request.form['inputName']
        _descricao = request.form['inputDescricao']
        _objetivo = request.form['inputObjetivo']

        # Valida os dados recebidos
        if _name and _descricao and _objetivo and _id:

            with closing(mysql.connect()) as conn:
                with closing(conn.cursor()) as cursor:

                    cursor.callproc('sp_createProject', (_name, _descricao, _objetivo, _id))
                    data = cursor.fetchall()

                    if len(data) is 1:
                        conn.commit()
                        return json.dumps(data[0][0])
                    else:
                        return json.dumps({'error ': str(data[0])})
        else:
            return json.dumps({'error': '<span>preencha os campos requeridos</span>'})

    except Exception as e:
        return json.dumps({'error': str(e)})


@app.route('/newItemProject', methods=['POST'])
def newItemProject():
    try:
        _id = session['user_id']
        _proj_id = request.form['proj_id']
        if request.form['item_id']:
            _item_id = request.form['item_id']

            if _item_id == 'None':
                _item_id = '0'

        else:
            _item_id = '0'

        _name = request.form['inputName']
        _descricao = request.form['inputDescricao']

        # Valida os dados recebidos
        if _name and _descricao and _proj_id:

            with closing(mysql.connect()) as conn:
                with closing(conn.cursor()) as cursor:

                    cursor.callproc('sp_createItemProject', (_name, _descricao, _proj_id, _item_id))
                    data = cursor.fetchall()

                    if len(data) is 1:
                        conn.commit()

                        if request.files and _item_id == '0':
                            _image_file = request.files['profile_image']
                            mongo.save_file(_image_file.filename, _image_file)
                            mongo.db.users.insert({'item_proj_id': data[0][0], 'image_name': _image_file.filename})

                        return json.dumps(int(_proj_id))
                    else:
                        return json.dumps({'error ': str(data[0])})
        else:
            return json.dumps({'error': '<span>preencha os campos requeridos</span>'})

    except Exception as e:
        return json.dumps({'error': str(e)})


@app.route('/login', methods=['POST', 'GET'])
def login():
    try:
        _email = request.form['inputEmail']
        _password = request.form['inputPassword']

        # Valida os dados recebidos
        if _email and _password:

            with closing(mysql.connect()) as conn:
                with closing(conn.cursor()) as cursor:

                    cursor.callproc('sp_validaAcesso', (_email,))
                    data = cursor.fetchall()

                    if check_password_hash(data[0][3], _password):
                        session['user_name'] = data[0][1]
                        session['user_email'] = data[0][2]
                        session['user_id'] = data[0][0]
                        return json.dumps(data[0][0])
                    else:
                        return json.dumps({'error': '<span>Dados invalidos.</span>'})
        else:
            return json.dumps({'error': '<span>preencha os campos requeridos</span>'})

    except Exception as e:
        return json.dumps({'error': str(e)})


if __name__ == "__main__":
    app.run()

